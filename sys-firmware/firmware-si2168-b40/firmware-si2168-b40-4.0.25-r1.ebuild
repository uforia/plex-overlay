# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="8"

DESCRIPTION="Firmware for Silicon Labs Si2168(b40) DVB-T/T2/C demodulator driver"
HOMEPAGE="http://palosaari.fi/linux/"
SRC_URI="http://palosaari.fi/linux/v4l-dvb/firmware/Si2168/Si2168-B40/${PV}/dvb-demod-si2168-b40-01.fw -> dvb-demod-si2168-b40-01.fw-${PV}"

LICENSE="Hauppauge-Firmware"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RESTRICT="mirror"

S="${WORKDIR}"

src_unpack() {
	cp "${DISTDIR}/${A}" "${S}"
}

src_install() {
	insinto /lib/firmware
	newins "${S}"/dvb-demod-si2168-b40-01.fw-${PV} dvb-demod-si2168-b40-01.fw
}
