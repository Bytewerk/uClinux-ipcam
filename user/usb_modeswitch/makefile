
MAKEVARS     = CC="$(CC) $(CFLAGS)" LIBS="-lusb -lpthread"

usb-modeswitch-1.2.4_URL         = \
	http://www.draisberghof.de/usb_modeswitch/usb-modeswitch-1.2.4.tar.bz2
usb-modeswitch-1.2.4_MAKEVARS  = $(MAKEVARS) UDEVDIR=`pwd`/build/usb-modeswitch-1.2.4-install/libexec/udev

usb-modeswitch-data-20120815_URL = \
	http://www.draisberghof.de/usb_modeswitch/usb-modeswitch-data-20120815.tar.bz2
usb-modeswitch-data-20120815_MAKEVARS  = $(MAKEVARS) RULESDIR=`pwd`/build/usb-modeswitch-data-20120815-install/libexec/udev/rules.d

AUTOMAKE_y   += usb-modeswitch-1.2.4 usb-modeswitch-data-20120815

include $(ROOTDIR)/tools/automake.inc

