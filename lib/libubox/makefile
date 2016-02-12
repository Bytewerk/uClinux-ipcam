
URL      = git://git.openwrt.org/project/libubox.git
VERSION  = e7e554c194d94f43b5a1e885bddbf1f092019ac4
METHOD   = git
AUTOCONF = cmake CMakeLists.txt -DBUILD_LUA=0
AUTOCONF += -DCMAKE_INSTALL_PREFIX=/ -DCMAKE_SYSTEM_PREFIX_PATH=$(STAGEDIR)
libubox_ROMFS = romfs_fixup

include $(ROOTDIR)/tools/automake.inc

romfs_fixup:
	mkdir -p $(ROMFSDIR)/usr/share
	cp -afL $(ROMFSDIR)/share/libubox $(ROMFSDIR)/usr/share/.
	rm -rf $(ROMFSDIR)/share/libubox 

