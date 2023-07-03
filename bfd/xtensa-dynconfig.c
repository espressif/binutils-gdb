/* Xtensa configuration settings loader.
   Copyright (C) 2022-2023 Free Software Foundation, Inc.

   This file is part of BFD, the Binary File Descriptor library.

   GCC is free software; you can redistribute it and/or modify it under
   the terms of the GNU General Public License as published by the Free
   Software Foundation; either version 3, or (at your option) any later
   version.

   GCC is distributed in the hope that it will be useful, but WITHOUT ANY
   WARRANTY; without even the implied warranty of MERCHANTABILITY or
   FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
   for more details.

   You should have received a copy of the GNU General Public License
   along with GCC; see the file COPYING3.  If not see
   <http://www.gnu.org/licenses/>.  */

#include "sysdep.h"
#include "bfd.h"
#include "libbfd.h"
#include "libiberty.h"

#define XTENSA_CONFIG_DEFINITION
#include "xtensa-config.h"
#include "xtensa-dynconfig.h"

#if defined (HAVE_DLFCN_H)
#include <dlfcn.h>
#elif defined (HAVE_WINDOWS_H)
#include <windows.h>
#endif

#if !defined (HAVE_DLFCN_H) && defined (HAVE_WINDOWS_H)

#define RTLD_LAZY 0      /* Dummy value.  */

static void *
dlopen (const char *file, int mode ATTRIBUTE_UNUSED)
{
  return LoadLibrary (file);
}

static void *
dlsym (void *handle, const char *name)
{
  return (void *) GetProcAddress ((HMODULE) handle, name);
}

static int ATTRIBUTE_UNUSED
dlclose (void *handle)
{
  FreeLibrary ((HMODULE) handle);
  return 0;
}

static const char *
dlerror (void)
{
  return _("Unable to load DLL.");
}

#endif /* !defined (HAVE_DLFCN_H) && defined (HAVE_WINDOWS_H)  */

#define CONFIG_ENV_NAME "XTENSA_GNU_CONFIG"

/* this variable can be changed with input option for gas/ld  */
const char *xtensa_dynconfig_file = "";

#ifdef BFD_SUPPORTS_PLUGINS

static char *get_xtensa_dynconfig_file (void)
{
  const char *xtensa_dynconfig_env = getenv (CONFIG_ENV_NAME);
  if (!strlen (xtensa_dynconfig_file))
    {
      if (xtensa_dynconfig_env && !strlen (lbasename (xtensa_dynconfig_env)))
	{
	  /* XTENSA_GNU_CONFIG has directory path, but dynconfig file is not set */
	  return NULL;
	}
      else if (xtensa_dynconfig_env)
	{
	  /* XTENSA_GNU_CONFIG has filepath */
	  return xstrdup (xtensa_dynconfig_env);
	}
      /* dynconfig is not set */
      return NULL;
    }
  if (!xtensa_dynconfig_env)
    {
      /* XTENSA_GNU_CONFIG has filepath */
      return xstrdup (xtensa_dynconfig_file);
    }
  if (!strlen (lbasename (xtensa_dynconfig_env)))
    {
      /* XTENSA_GNU_CONFIG has directory path and dynconfig file is set */
      const size_t len = strlen (xtensa_dynconfig_env) +
                         strlen (xtensa_dynconfig_file) + 1;
      char *path = ( char *) xmalloc (len);
      strcpy (path, xtensa_dynconfig_env);
      strcat (path, xtensa_dynconfig_file);
      return path;
    }
  if (strcmp (lbasename (xtensa_dynconfig_env),
              lbasename (xtensa_dynconfig_file)))
    {
      _bfd_error_handler (_("Both %s and \"-dynconfig=\" specified but pointed different files: \"%s\" \"%s\""),
			      CONFIG_ENV_NAME, xtensa_dynconfig_env, xtensa_dynconfig_file);
      abort ();
    }
  /* XTENSA_GNU_CONFIG and mdynconfig option point to the same file */
  return xstrdup (xtensa_dynconfig_env);
}

#endif /* BFD_SUPPORTS_PLUGINS  */

const void *xtensa_load_config (const char *name ATTRIBUTE_UNUSED,
				const void *no_plugin_def,
				const void *no_name_def ATTRIBUTE_UNUSED)
{
  static int init;
#if BFD_SUPPORTS_PLUGINS
  static void *handle;
  void *p;

  if (!init)
    {
      char *path = get_xtensa_dynconfig_file();

      init = 1;
      if (!path)
	return no_plugin_def;
      handle = dlopen (path, RTLD_LAZY);
      free (path);
      if (!handle)
	{
	  _bfd_error_handler (_("%s is defined but could not be loaded: %s"),
			      CONFIG_ENV_NAME, dlerror ());
	  abort ();
	}
    }
  else if (!handle)
    {
      return no_plugin_def;
    }

  p = dlsym (handle, name);
  if (!p)
    {
      if (no_name_def)
	return no_name_def;

      _bfd_error_handler (_("%s is loaded but symbol \"%s\" is not found: %s"),
			  CONFIG_ENV_NAME, name, dlerror ());
      abort ();
    }
  return p;
#else
  if (!init)
    {
      const char *path = strcmp(xtensa_dynconfig_file, "") ? xtensa_dynconfig_file : getenv (CONFIG_ENV_NAME);

      init = 1;
      if (path)
	{
	  _bfd_error_handler (_("%s is defined but plugin support is disabled"),
			      CONFIG_ENV_NAME);
	  abort ();
	}
    }
  return no_plugin_def;
#endif
}

XTENSA_CONFIG_INSTANCE_LIST;

const struct xtensa_config_v1 *xtensa_get_config_v1 (void)
{
  static const struct xtensa_config_v1 *config;

  if (!config)
    config = (const struct xtensa_config_v1 *) xtensa_load_config ("xtensa_config_v1",
								   &xtensa_config_v1,
								   NULL);
  return config;
}

const struct xtensa_config_v2 *xtensa_get_config_v2 (void)
{
  static const struct xtensa_config_v2 *config;
  static const struct xtensa_config_v2 def;

  if (!config)
    config = (const struct xtensa_config_v2 *) xtensa_load_config ("xtensa_config_v2",
								   &xtensa_config_v2,
								   &def);
  return config;
}
