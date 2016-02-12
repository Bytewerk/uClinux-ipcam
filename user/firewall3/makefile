URL      = git://nbd.name/firewall3.git
METHOD   = git
AUTOCONF = cmake CMakeLists.txt
AUTOCONF += -DCMAKE_INSTALL_PREFIX=/ -DCMAKE_SYSTEM_PREFIX_PATH=$(STAGEDIR)
netifd_ROMFS = my_romfs
VERSION = 50e97c52e75bdfd325cf20d43b32d294ff84d92f

include $(ROOTDIR)/tools/automake.inc

my_romfs:
	mkdir -p $(ROMFSDIR)/lib/netifd
