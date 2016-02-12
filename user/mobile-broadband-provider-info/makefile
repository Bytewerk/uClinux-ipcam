## ADD Telstra Mobile
## ADD Wildcards instead of unknown

URL    = git://git.gnome.org/mobile-broadband-provider-info
VERSION = 62e403a2b5d14d8673f105404587060066748652
METHOD = git
CONFIGURE = autogen.sh
mobile-broadband-provider-info_CLEAN = my_clean

ifndef USER_MOBILE_BROADBAND_PROVIDER_INFO_INSTALL_COMPLETE
AUTOMAKE_ROMFS = my_romfs
endif

include $(ROOTDIR)/tools/automake.inc

COUNTRY_FILTER_y = 
COUNTRY_FILTER_$(CONFIG_USER_MOBILE_BROADBAND_PROVIDER_INFO_INSTALL_AU) += au
COUNTRY_FILTER_$(CONFIG_USER_MOBILE_BROADBAND_PROVIDER_INFO_INSTALL_US) += us
COUNTRY_FILTER_$(CONFIG_USER_MOBILE_BROADBAND_PROVIDER_INFO_INSTALL_CA) += ca

ifdef CONFIG_USER_MOBILE_BROADBAND_PROVIDER_INFO_INSTALL_PARTIAL
SPACE =
SPACE +=
FILTER = (egrep '^($(subst $(SPACE),|,$(COUNTRY_FILTER_y))),' ; true)
else
FILTER = cat
endif

my_clean:
	rm -f serviceproviders.txt

my_romfs:
ifndef CONFIG_USER_MOBILE_BROADBAND_PROVIDER_INFO_INSTALL_NONE
	xsltproc serviceproviders.xsl \
		build/mobile-broadband-provider-info/serviceproviders.xml | $(FILTER) \
		> serviceproviders.txt
ifdef CONFIG_USER_MOBILE_BROADBAND_PROVIDER_INFO_INSTALL_UNKNOWN
	cp serviceproviders.txt serviceproviders.txt.orig
	awk -F , '{ print "*,*,"$$3","$$4"," }' < serviceproviders.txt.orig|\
		sort | uniq >> serviceproviders.txt
	rm -f serviceproviders.txt.orig
endif
	$(ROMFSINST) /etc/serviceproviders.txt
endif

