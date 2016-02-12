
NL_VER   = 3.2.21
URL      = http://www.infradead.org/~tgr/libnl/files/libnl-$(NL_VER).tar.gz
MAKEVARS =
AUTOMAKE_ROMFS = libnl_romfs
AUTOMAKE_PRESTAGE = libnl_prestage

include $(ROOTDIR)/tools/automake.inc

libnl_romfs:
	cp -a build/libnl-$(NL_VER)-install/lib/*.so* $(ROMFSDIR)/lib/.

libnl_prestage:
	mkdir -p build/libnl-$(NL_VER)-install/include/libnl3
	ln -sf ./libnl3/netlink build/libnl-$(NL_VER)-install/include/
