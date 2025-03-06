# Process this file with automake to generate Makefile.in

AUTOMAKE_OPTIONS = foreign

GPROF = ../gprof$(EXEEXT)

GPROF_FLAGS = -pg

AM_CFLAGS = $(GPROF_FLAGS)

COMPILE = $(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) \
	$(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS)
LINK = $(CC) $(AM_CFLAGS) $(CFLAGS) $(OPT_NO_PLUGINS) \
	$(AM_LDFLAGS) $(LDFLAGS) -o $@

# We will add to these later, for each individual test.  Note
# that we add each test under check_SCRIPTS;
# the TESTS variable is automatically populated from these.
check_SCRIPTS =
check_DATA =
MOSTLYCLEANFILES =

TESTS = $(check_SCRIPTS)

if NATIVE

check_SCRIPTS += tst-gmon-gprof.sh

check_DATA += tst-gmon-gprof.out
MOSTLYCLEANFILES += tst-gmon.$(OBJEXT) tst-gmon$(EXEEXT) gmon.out
tst-gmon.$(OBJEXT): tst-gmon.c
	$(COMPILE) -c -o $@ $<
tst-gmon: tst-gmon.$(OBJEXT)
	$(LINK) tst-gmon.$(OBJEXT)
tst-gmon-gprof.out: tst-gmon$(EXEEXT)
	$(srcdir)/tst-gmon-gprof.sh $(GPROF) tst-gmon$(EXEEXT)

# Host gcc emits .text.* per function.  The linker script places those
# inputs in output sections that are not named .text.
check_SCRIPTS += tst-gmon-sections.sh
check_DATA += tst-gmon-sections.out
MOSTLYCLEANFILES += tst-gmon-sections$(EXEEXT) tst-gmon-sections.gmon \
	tst-gmon-sections.prof tst-gmon-sections.err tst-gmon-sections.syms
tst-gmon-sections.out: $(srcdir)/tst-gmon-sections.sh \
		$(srcdir)/tst-gmon-sections.c \
		$(srcdir)/tst-gmon-sections.ld $(GPROF)
	$(srcdir)/tst-gmon-sections.sh $(GPROF) $(CC) $(srcdir)

endif NATIVE

EXTRA_DIST = tst-gmon-sections.c tst-gmon-sections.ld tst-gmon-sections.sh
