# This script was automatically generated from 
#  http://www.gentoo.org/security/en/glsa/glsa-200405-15.xml
# It is released under the Nessus Script Licence.
# The messages are release under the Creative Commons - Attribution /
# Share Alike license. See http://creativecommons.org/licenses/by-sa/2.0/
#
# Avisory is copyright 2001-2005 Gentoo Foundation, Inc.
# GLSA2nasl Convertor is copyright 2004 Michel Arboi <mikhail@nessus.org>

if (! defined_func('bn_random')) exit(0);

if (description)
{
 script_id(14501);
 script_version("$Revision: 1.3 $");
 script_xref(name: "GLSA", value: "200405-15");
 script_cve_id("CVE-2004-0398");

 desc = 'The remote host is affected by the vulnerability described in GLSA-200405-15
(cadaver heap-based buffer overflow)


    Stefan Esser discovered a vulnerability in the code of the neon library
    (see GLSA 200405-13). This library is also included in cadaver.
  
Impact

    When connected to a malicious WebDAV server, this vulnerability could allow
    remote execution of arbitrary code with the rights of the user running
    cadaver.
  
Workaround

    There is no known workaround at this time. All users are advised to upgrade
    to the latest available version of cadaver.
  
References:
    http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2004-0398
    http://www.gentoo.org/security/en/glsa/glsa-200405-13.xml


Solution: 
    All users of cadaver should upgrade to the latest stable version:
    # emerge sync
    # emerge -pv ">=net-misc/cadaver-0.22.2"
    # emerge ">=net-misc/cadaver-0.22.2"
  

Risk factor : Medium
';
 script_description(english: desc);
 script_copyright(english: "(C) 2005 Michel Arboi <mikhail@nessus.org>");
 script_name(english: "[GLSA-200405-15] cadaver heap-based buffer overflow");
 script_category(ACT_GATHER_INFO);
 script_family(english: "Gentoo Local Security Checks");
 script_dependencies("ssh_get_info.nasl");
 script_require_keys('Host/Gentoo/qpkg-list');
 script_summary(english: 'cadaver heap-based buffer overflow');
 exit(0);
}

include('qpkg.inc');
if (qpkg_check(package: "net-misc/cadaver", unaffected: make_list("ge 0.22.2"), vulnerable: make_list("le 0.22.1")
)) { security_warning(0); exit(0); }
