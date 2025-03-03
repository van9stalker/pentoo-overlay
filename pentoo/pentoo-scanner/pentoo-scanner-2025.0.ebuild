# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Pentoo scanner meta ebuild"
HOMEPAGE="https://www.pentoo.org"
KEYWORDS="amd64 arm x86"

SLOT="0"
LICENSE="GPL-3"
IUSE="pentoo-full"

# https://github.com/royhills/ike-scan/issues/43
# https://github.com/royhills/ike-scan/pull/44
# net-analyzer/ike-scan removed from pentoo-full
# re-add with version 1.9.6
PDEPEND="net-analyzer/nmap
	net-analyzer/mdns-scan
	pentoo-full? (
		net-analyzer/enum4linux
		net-analyzer/firewalk
		net-analyzer/hunt
		net-analyzer/nbtscan
		net-analyzer/nikto
		net-analyzer/nmbscan
		net-analyzer/onesixtyone
		net-analyzer/ppscan
		net-analyzer/scanssh
		net-analyzer/upnpscan
		amd64? ( net-analyzer/wpscan
			net-analyzer/zmap )
	)"
#removed from pentoo-full because it causes bootstrap issues due to unstable python deps
#net-analyzer/wapiti
