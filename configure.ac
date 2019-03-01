dnl ******************
dnl * Versions
dnl ******************
m4_define(sexy_major_version, 0)
m4_define(sexy_minor_version, 1)
m4_define(sexy_micro_version, 9)
m4_define(sexy_version, sexy_major_version.sexy_minor_version.sexy_micro_version)

m4_define(pygtk_required_version, 2.6.2)

dnl ******************
dnl * Init Stuff
dnl ******************
AC_PREREQ(2.52)

AC_INIT(sexy-python, sexy_version, raphael@slinckx.net)

AM_CONFIG_HEADER(config.h)
AC_CONFIG_SRCDIR(config.h.in)
AC_COPYRIGHT([Copyright 2005 Raphaël Slinckx])

AM_INIT_AUTOMAKE


AC_DEFINE(SEXY_MAJOR_VERSION, sexy_major_version, [Sexy major version])
AC_DEFINE(SEXY_MINOR_VERSION, sexy_minor_version, [Sexy minor version])
AC_DEFINE(SEXY_MICRO_VERSION, sexy_micro_version, [Sexy macro version])

GNOME_COMMON_INIT

AC_DISABLE_STATIC
AC_PROG_LIBTOOL

dnl ******************
dnl * Check for Python
dnl ******************
AM_PATH_PYTHON(2.3)
AM_CHECK_PYTHON_HEADERS(,[AC_MSG_ERROR(could not find Python headers)])

dnl ******************
dnl * Check for PyGTK
dnl ******************
PKG_CHECK_MODULES(PYGTK, pygtk-2.0 >= pygtk_required_version)
AC_SUBST(PYGTK_CFLAGS)
AC_PATH_PROG(PYGTK_CODEGEN, pygtk-codegen-2.0, no)
if test "x$PYGTK_CODEGEN" = xno; then
  AC_MSG_ERROR(could not find pygtk-codegen-2.0 script)
fi

dnl ******************
dnl * Check for PyGTK Defs
dnl ******************
AC_MSG_CHECKING(for pygtk defs)
PYGTK_DEFSDIR=`$PKG_CONFIG --variable=defsdir pygtk-2.0`
AC_SUBST(PYGTK_DEFSDIR)
AC_MSG_RESULT($PYGTK_DEFSDIR)

dnl ******************
dnl * Check for libsexy
dnl ******************
PKG_CHECK_MODULES(LIBSEXY, libsexy >= sexy_version)
AC_SUBST(LIBSEXY_CFLAGS)
AC_SUBST(LIBSEXY_LIBS)


dnl ******************
dnl * Init Stuff
dnl ******************
AC_CONFIG_FILES([
Makefile
sexy/Makefile
])
AC_OUTPUT

echo
echo $PACKAGE v$VERSION

echo
echo "Now type make to compile"
echo "Then su to root and type: make install"
echo
