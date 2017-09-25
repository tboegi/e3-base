dnl   PLEASE LOOK AT EPICS_BASE/configure/CONFIG_SITE
dnl
dnl   Use the default option in CONFIG_SITE
dnl
dnl $  m4  config_site.m4
dnl    CROSS_COMPILER_TARGET_ARCHS = 
dnl    CROSS_COMPILER_HOST_ARCHS = 
dnl    CROSS_COMPILER_RUNTEST_ARCHS = 
dnl    SHARED_LIBRARIES = YES
dnl    STATIC_BUILD = NO
dnl    HOST_OPT = YES
dnl    CROSS_OPT = YES
dnl    HOST_WARN = YES
dnl    CROSS_WARN = YES
dnl    #INSTALL_LOCATIOIN = 
dnl    USE_POSIX_THREAD_PRIORITY_SCHEDULING = YES
dnl    EPICS_SITE_VERSION =
dnl    GCC_PIPE = NO
dnl    LINKER_USE_RPATH = YES

dnl   Set the cross compiler target archs
dnl   $ m4  -D_CROSS_COMPILER_TARGET_ARCHS=linux-ppc64e6500 config_site.m4
dnl     CROSS_COMPILER_TARGET_ARCHS = linux-ppc64e6500
dnl
dnl
ifdef(`_CROSS_COMPILER_TARGET_ARCHS',
	`CROSS_COMPILER_TARGET_ARCHS = _CROSS_COMPILER_TARGET_ARCHS',
	`CROSS_COMPILER_TARGET_ARCHS = ')
	
ifdef(`_CROSS_COMPILER_HOST_ARCHS',
	`CROSS_COMPILER_HOST_ARCHS = _CROSS_COMPILER_HOST_ARCHS',
	`CROSS_COMPILER_HOST_ARCHS = ')
	
ifdef(`_CROSS_COMPILER_RUNTEST_ARCHS',
	`CROSS_COMPILER_RUNTEST_ARCHS = _CROSS_COMPILER_RUNTEST_ARCHS',
	`CROSS_COMPILER_RUNTEST_ARCHS = ')
	
ifdef(`_NO_SHARED_LIBRARIES',
	`SHARED_LIBRARIES = NO',
	`SHARED_LIBRARIES = YES')

ifdef(`_YES_STATIC_BUILD',
	`STATIC_BUILD = YES',
	`STATIC_BUILD = NO')

ifdef(`_NO_HOST_OPT',
	`HOST_OPT = NO',
	`HOST_OPT = YES')

ifdef(`_NO_CROSS_OPT',
	`CROSS_OPT = NO',
	`CROSS_OPT = YES')

ifdef(`_NO_HOST_WARN',
	`HOST_WARN = NO',
	`HOST_WARN = YES')

ifdef(`_NO_CROSS_WARN',
	`CROSS_WARN = NO',
	`CROSS_WARN = YES')

ifdef(`_INSTALL_LOCATIOIN', 
	`INSTALL_LOCATIOIN = _INSTALL_LOCATIOIN',
	`#INSTALL_LOCATIOIN = ')
	
ifdef(`_NO_USE_POSIX_THREAD_PRIORITY_SCHEDULING',
	`USE_POSIX_THREAD_PRIORITY_SCHEDULING = NO',
	`USE_POSIX_THREAD_PRIORITY_SCHEDULING = YES')

ifdef(`_EPICS_SITE_VERSION',
	`EPICS_SITE_VERSION = _EPICS_SITE_VERSION',
	`EPICS_SITE_VERSION =')

ifdef(`_YES_GCC_PIPE',
	`GCC_PIPE = YES',
	`GCC_PIPE = NO')

ifdef(`_NO_LINKER_USE_RPATH',
	`LINKER_USE_RPATH = NO',
	`LINKER_USE_RPATH = YES')

