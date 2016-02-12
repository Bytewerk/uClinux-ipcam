METHOD      = git
AUTORECONF  = ./boot.sh
URL         = https://github.com/openvswitch/ovs.git
VERSION     = 0a87a6eabc6f0d34279ed460515cd483e22668a2
CONFOPTS    += --with-linux=$(ROOTDIR)/$(LINUXDIR)
CONFOPTS    += --datarootdir="/usr/share"
MAKEVARS    = 
ovs_ROMFS   = my_romfs

include $(ROOTDIR)/tools/automake.inc

my_romfs:
	$(MAKE) -C $(ROOTDIR)/$(LINUXDIR) \
		M=`pwd`/build/ovs/datapath/linux \
		modules_install \
		INSTALL_MOD_CMD="$(ROMFSINST) -S -r \"\"" \
		INSTALL_MOD_PATH=$(ROMFSDIR) \
		DEPMOD=$(ROOTDIR)/tools/depmod.sh
	$(ROMFSINST) -R /etc/openvswitch
	$(ROMFSINST) -s /var/run/openvswitch /etc/openvswitch

