
URL      = git://nbd.name/uci.git
VERSION  = 2549fb84542a6b59a1a21dfd7fc9fd51700c8ce3
METHOD   = git
AUTOCONF = cmake CMakeLists.txt
AUTOCONF += -DBUILD_LUA=0
AUTOCONF += -DCMAKE_INSTALL_PREFIX=/ -DCMAKE_SYSTEM_PREFIX_PATH=$(STAGEDIR)
CFLAGS   += -DUCI_CONFDIR=\"/var/run/uci\"

include $(ROOTDIR)/tools/automake.inc

