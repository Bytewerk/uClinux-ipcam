#
#	Makefile -- Build instructions for NUVOTON/NUC700
#

ROMFS_DIRS = bin etc home lib mnt mnt/root mnt/union proc sbin usr var tmp sys
ROMFSIMG = $(IMAGEDIR)/romfs.img

clean:

romfs:
	[ -d $(ROMFSDIR)/$$i ] || mkdir -p $(ROMFSDIR)
	for i in $(ROMFS_DIRS); do \
		[ -d $(ROMFSDIR)/$$i ] || mkdir -p $(ROMFSDIR)/$$i; \
	done
	echo "$(VERSIONSTR) -- " `date` > $(ROMFSDIR)/etc/version
	cp $(PRODUCTDIR)/rootfs/init	$(ROMFSDIR)/bin/
	chmod 777 $(ROMFSDIR)/bin/init
	[ -d $(ROMFSDIR)/dev ] || sudo tar jxvf $(PRODUCTDIR)/rootfs/dev.tar.bz2 -C $(ROMFSDIR)/
	cp $(PRODUCTDIR)/rootfs/etc/*     $(ROMFSDIR)/etc/
image:
	[ -d $(IMAGEDIR) ] || mkdir -p $(IMAGEDIR)
	cp $(PWD)/../$(LINUXDIR)/arch/arm/boot/zImage $(IMAGEDIR)
	genromfs -v -V "ROMdisk" -f $(ROMFSIMG) -d $(ROMFSDIR)
