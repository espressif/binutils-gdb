# Process this file with automake to generate Makefile.in

AUTOMAKE_OPTIONS = foreign

GPROF = ../gprof$(EXEEXT)

# NB: -O2 -fno-omit-frame-pointer is needed for expected call graph.  See
# https://sourceware.org/bugzilla/show_bug.cgi?id=32768
# -g is needed for line number info checked by tst-gmon-gprof-l.sh.  See
# https://sourceware.org/bugzilla/show_bug.cgi?id=32779
GPROF_FLAGS = -O2 -fno-omit-frame-pointer -pg -g

COMPILE = $(CC) $(AM_CFLAGS) $(GPROF_FLAGS)
LINK = $(CC) $(AM_CFLAGS) $(GPROF_FLAGS) $(AM_LDFLAGS) $(LDFLAGS) -o $@

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
tst-gmon-gprof.out: tst-gmon$(EXEEXT) $(GPROF)
	$(srcdir)/tst-gmon-gprof.sh $(GPROF) tst-gmon$(EXEEXT)

check_SCRIPTS += tst-gmon-gprof-l.sh
check_DATA += tst-gmon-gprof-l.out
tst-gmon-gprof-l.out: tst-gmon$(EXEEXT) $(GPROF)
	$(srcdir)/tst-gmon-gprof-l.sh $(GPROF) tst-gmon$(EXEEXT)

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
