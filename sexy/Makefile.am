INCLUDES = $(PYTHON_INCLUDES) $(PYGTK_CFLAGS)

defsdir = $(datadir)/pygtk/2.0/defs
defs_DATA = sexy.defs

pkgpythondir = $(pyexecdir)/gtk-2.0
pkgpyexecdir = $(pyexecdir)/gtk-2.0

pkgpyexec_LTLIBRARIES = sexy.la
sexy_la_CFLAGS = $(LIBSEXY_CFLAGS)
sexy_la_LDFLAGS = -module -avoid-version -export-symbols-regex initsexy
sexy_la_LIBADD = $(LIBSEXY_LIBS)
sexy_la_SOURCES = sexymodule.c 

nodist_sexy_la_SOURCES = sexy.c

CLEANFILES = sexy.c
EXTRA_DIST = sexy.defs sexy.override gen-defs.sh
sexy.c: sexy.defs sexy.override

.defs.c:
	(cd $(srcdir) \
	 && $(PYGTK_CODEGEN) \
	    --override $*.override \
	    --register $(PYGTK_DEFSDIR)/gtk-types.defs \
	    --register $(PYGTK_DEFSDIR)/gdk-types.defs \
	    --prefix py$* $*.defs) > gen-$*.c \
	&& cp gen-$*.c $*.c \
	&& rm -f gen-$*.c

