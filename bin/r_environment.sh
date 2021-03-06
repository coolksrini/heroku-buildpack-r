#!/bin/bash

ARCH=`dpkg-architecture -qDEB_HOST_MULTIARCH`
GCC_VERSION=4.8
APP_HOME=/app

# $HOME is /app

export PATH="$APP_HOME/vendor/R/bin:$APP_HOME/.apt/usr/bin:$APP_HOME/.apt/usr/sbin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:$PATH"
export LIBRARY_PATH="$APP_HOME/.apt/usr/lib/$ARCH:$APP_HOME/.apt/usr/lib:/usr/lib/$ARCH:/usr/lib:$LIBRARY_PATH"
export LD_LIBRARY_PATH="$APP_HOME/.apt/usr/lib:$APP_HOME/.apt/usr/lib/$ARCH/:$APP_HOME/.apt/usr/lib/gcc/$ARCH/$GCC_VERSION:/usr/lib/gcc/$ARCH/$GCC_VERSION:$APP_HOME/.apt/usr/lib/libblas:$APP_HOME/.apt/usr/lib/lapack:$LD_LIBRARY_PATH"
export LDFLAGS="-L$APP_HOME/.apt/usr/lib -L$HOME/.apt/usr/lib/$ARCH -L$APP_HOME/.apt/usr/lib/gcc/$ARCH/$GCC_VERSION -L$APP_HOME/.apt/usr/lib/libblas -L$APP_HOME/.apt/usr/lib/lapack $LDFLAGS"
export PKG_LIBS="$LDFLAGS $PKG_LIBS"
export PKG_CPPFLAGS="-I$APP_HOME/.apt/usr/include -I$APP_HOME/.apt/usr/include/$ARCH $PKG_CPPFLAGS"
export PKG_CONFIG_PATH="$APP_HOME/vendor/R/lib/pkgconfig:$APP_HOME/.apt/usr/lib/$ARCH/pkgconfig:$APP_HOME/.apt/usr/lib/pkgconfig:$APP_HOME/.apt/usr/share/pkgconfig:$PKG_CONFIG_PATH"
export INCLUDE_PATH="$APP_HOME/.apt/usr/include:$APP_HOME/.apt/usr/include/$ARCH:$INCLUDE_PATH"
export CPATH="$INCLUDE_PATH"
export CPPPATH="$INCLUDE_PATH"
export R_INCLUDE="$APP_HOME/vendor/R/lib64/R/include"
export TCL_LIBRARY="$APP_HOME/.apt/usr/share/tcltk/tcl8.5"
export TK_LIBRARY="$APP_HOME/.apt/usr/share/tcltk/tk8.5"
export CRAN_MIRROR="http://cran.revolutionanalytics.com"
