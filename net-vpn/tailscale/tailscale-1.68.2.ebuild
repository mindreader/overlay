# Copyright 2020-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit go-module systemd tmpfiles

# These settings are obtained by running ./build_dist.sh shellvars in
# the upstream repo.
VERSION_MINOR="68"
VERSION_SHORT="1.68.2"
VERSION_LONG="1.68.2-tc79c500c7"
VERSION_GIT_HASH="c79c500c7e93c8e416c77f85d106b04a4aab23ab"

DESCRIPTION="Tailscale vpn client"
HOMEPAGE="https://tailscale.com"
SRC_URI="https://github.com/tailscale/tailscale/archive/v${PV}.tar.gz -> ${P}.tar.gz"
SRC_URI+=" https://gentoo.rgst.io/updater_artifacts/${CATEGORY}/${PN}/${PV}/deps.tar.xz -> ${P}-deps.tar.xz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm arm64 ~riscv ~x86"

RDEPEND="net-firewall/iptables"
BDEPEND=">=dev-lang/go-1.22"

RESTRICT="test"

# This translates the build command from upstream's build_dist.sh to an
# ebuild equivalent.
build_dist() {
  ego build -tags xversion -ldflags "
		-X tailscale.com/version.Long=${VERSION_LONG}
		-X tailscale.com/version.Short=${VERSION_SHORT}
		-X tailscale.com/version.GitCommit=${VERSION_GIT_HASH}" "$@"
}

src_compile() {
  build_dist ./cmd/tailscale
  build_dist ./cmd/tailscaled
}

src_install() {
  dosbin tailscaled
  dobin tailscale

  systemd_dounit cmd/tailscaled/tailscaled.service
  insinto /etc/default
  newins cmd/tailscaled/tailscaled.defaults tailscaled
  keepdir /var/lib/${PN}
  fperms 0750 /var/lib/${PN}

  newtmpfiles "${FILESDIR}/${PN}.tmpfiles" ${PN}.conf

  newinitd "${FILESDIR}/${PN}d.initd" ${PN}
  newconfd "${FILESDIR}/${PN}d.confd" ${PN}
}

pkg_postinst() {
  tmpfiles_process ${PN}.conf
}
