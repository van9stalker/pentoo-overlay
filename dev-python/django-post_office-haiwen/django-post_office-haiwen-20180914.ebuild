# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{11..13} )

inherit distutils-r1

HASH_COMMIT="2312cf240363721f737b5ac8eb86ab8cb255938f"
DESCRIPTION="A Django app to monitor and send mail asynchronously"
HOMEPAGE="https://github.com/ui/django-post_office https://django-filter.readthedocs.org"
#SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
SRC_URI="https://github.com/haiwen/django-post_office/archive/${HASH_COMMIT}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

CDEPEND=">=dev-python/django-1.8[${PYTHON_USEDEP}]
	dev-python/jsonfield[${PYTHON_USEDEP}]"
RDEPEND="${CDEPEND}"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

S="${WORKDIR}/django-post_office-${HASH_COMMIT}"
