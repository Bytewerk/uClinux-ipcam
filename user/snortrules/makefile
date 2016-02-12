# Note: this URL requires a registered account to download
URL = https://s3.amazonaws.com/snort-org/www/rules/20140114/snortrules-snapshot-2956.tar.gz

FINALTARGET = patched
AUTOMAKE_ROMFS = snortrules_romfs
include $(ROOTDIR)/tools/automake.inc

snortrules_romfs:
	mkdir -p $(ROMFSDIR)/etc/snort/
	$(ROMFSINST) /etc/snort/snort.conf
	$(ROMFSINST) build/etc/classification.config /etc/snort/
	$(ROMFSINST) build/etc/reference.config /etc/snort/
	$(ROMFSINST) build/etc/threshold.conf /etc/snort/
	$(ROMFSINST) build/etc/gen-msg.map /etc/snort/
	$(ROMFSINST) build/etc/sid-msg.map /etc/snort/
	$(ROMFSINST) build/etc/unicode.map /etc/snort/
	$(ROMFSINST) build/preproc_rules /etc/snort/preproc_rules/
	$(ROMFSINST) build/rules /etc/snort/rules/
