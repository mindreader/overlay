# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.4-r1

EAPI=8

CRATES="
	addr2line@0.21.0
	adler@1.0.2
	aho-corasick@1.1.2
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	ansi-str@0.8.0
	ansitok@0.2.0
	anstream@0.6.11
	anstyle@1.0.5
	anstyle-parse@0.2.3
	anstyle-query@1.0.2
	anstyle-wincon@3.0.2
	arrayvec@0.5.2
	async-compression@0.4.6
	autocfg@1.1.0
	backtrace@0.3.69
	base64@0.21.7
	base64ct@1.6.0
	bitflags@1.3.2
	bitflags@2.4.2
	block-buffer@0.10.4
	bstr@1.9.0
	built@0.7.1
	bumpalo@3.14.0
	bytecount@0.6.7
	byteorder@1.5.0
	bytes@1.5.0
	cc@1.0.83
	cfg-if@1.0.0
	chrono@0.4.33
	clap@4.4.18
	clap_builder@4.4.18
	clap_complete@4.4.10
	clap_derive@4.4.7
	clap_lex@0.6.0
	clap_mangen@0.2.19
	color-eyre@0.6.2
	color-print@0.3.5
	color-print-proc-macro@0.3.5
	color-spantrace@0.2.1
	colorchoice@1.0.0
	confique@0.2.5
	confique-macro@0.0.9
	console@0.15.8
	const-oid@0.9.6
	contracts@0.6.3
	core-foundation@0.9.4
	core-foundation-sys@0.8.6
	cpufeatures@0.2.12
	crc32fast@1.3.2
	crossbeam-deque@0.8.5
	crossbeam-epoch@0.9.18
	crossbeam-utils@0.8.19
	crypto-common@0.1.6
	ctor@0.2.6
	curve25519-dalek@4.1.1
	curve25519-dalek-derive@0.1.1
	demand@1.0.1
	der@0.7.8
	deranged@0.3.11
	diff@0.1.13
	digest@0.10.7
	dotenvy@0.15.7
	duct@0.13.7
	ed25519@2.2.3
	ed25519-dalek@2.1.0
	either@1.9.0
	encode_unicode@0.3.6
	encoding_rs@0.8.33
	equivalent@1.0.1
	errno@0.2.8
	errno@0.3.8
	errno-dragonfly@0.1.2
	exec@0.3.1
	eyre@0.6.12
	fastrand@1.9.0
	fastrand@2.0.1
	fiat-crypto@0.2.5
	filetime@0.2.23
	fixedbitset@0.4.2
	flate2@1.0.28
	fnv@1.0.7
	foreign-types@0.3.2
	foreign-types-shared@0.1.1
	form_urlencoded@1.2.1
	fslock@0.2.1
	futures-channel@0.3.30
	futures-core@0.3.30
	futures-io@0.3.30
	futures-sink@0.3.30
	futures-task@0.3.30
	futures-util@0.3.30
	generic-array@0.14.7
	getrandom@0.2.12
	gimli@0.28.1
	git2@0.18.1
	globset@0.4.14
	globwalk@0.8.1
	globwalk@0.9.1
	h2@0.3.24
	hashbrown@0.14.3
	heck@0.3.3
	heck@0.4.1
	hermit-abi@0.3.4
	home@0.5.9
	http@0.2.11
	http-body@0.4.6
	httparse@1.8.0
	httpdate@1.0.3
	humantime@2.1.0
	hyper@0.14.28
	hyper-rustls@0.24.2
	hyper-tls@0.5.0
	iana-time-zone@0.1.59
	iana-time-zone-haiku@0.1.2
	idna@0.5.0
	ignore@0.4.22
	indenter@0.3.3
	indexmap@2.2.2
	indicatif@0.17.7
	indoc@2.0.4
	insta@1.34.0
	instant@0.1.12
	ipnet@2.9.0
	itertools@0.12.1
	itoa@1.0.10
	jobserver@0.1.27
	js-sys@0.3.67
	lazy_static@1.4.0
	libc@0.2.153
	libgit2-sys@0.16.1+1.7.1
	libz-sys@1.1.15
	linked-hash-map@0.5.6
	linux-raw-sys@0.4.13
	log@0.4.20
	memchr@2.7.1
	mime@0.3.17
	minimal-lexical@0.2.1
	miniz_oxide@0.7.1
	mio@0.8.10
	native-tls@0.2.11
	nom@7.1.3
	num-conv@0.1.0
	num-traits@0.2.17
	num_cpus@1.16.0
	num_threads@0.1.6
	number_prefix@0.4.0
	object@0.32.2
	once_cell@1.19.0
	openssl@0.10.63
	openssl-macros@0.1.1
	openssl-probe@0.1.5
	openssl-sys@0.9.99
	os_pipe@1.1.5
	owo-colors@3.5.0
	papergrid@0.11.0
	paste@1.0.14
	path-absolutize@3.1.1
	path-dedot@3.1.1
	percent-encoding@2.3.1
	pest@2.7.6
	pest_derive@2.7.6
	pest_generator@2.7.6
	pest_meta@2.7.6
	petgraph@0.6.4
	pin-project-lite@0.2.13
	pin-utils@0.1.0
	pkcs8@0.10.2
	pkg-config@0.3.29
	platforms@3.3.0
	portable-atomic@1.6.0
	powerfmt@0.2.0
	ppv-lite86@0.2.17
	pretty_assertions@1.4.0
	proc-macro-error@1.0.4
	proc-macro-error-attr@1.0.4
	proc-macro2@1.0.78
	quick-xml@0.23.1
	quote@1.0.35
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	rayon@1.8.1
	rayon-core@1.12.1
	redox_syscall@0.4.1
	regex@1.10.3
	regex-automata@0.4.5
	regex-syntax@0.8.2
	reqwest@0.11.24
	ring@0.17.7
	rmp@0.8.12
	rmp-serde@1.1.2
	roff@0.2.1
	rustc-demangle@0.1.23
	rustc_version@0.4.0
	rustix@0.38.31
	rustls@0.21.10
	rustls-native-certs@0.6.3
	rustls-pemfile@1.0.4
	rustls-webpki@0.101.7
	rustversion@1.0.14
	ryu@1.0.16
	same-file@1.0.6
	schannel@0.1.23
	sct@0.7.1
	security-framework@2.9.2
	security-framework-sys@2.9.1
	self-replace@1.3.7
	self_update@0.39.0
	semver@1.0.21
	serde@1.0.196
	serde_derive@1.0.196
	serde_json@1.0.113
	serde_spanned@0.6.5
	serde_urlencoded@0.7.1
	sha2@0.10.8
	sharded-slab@0.1.7
	shared_child@1.0.0
	shell-escape@0.1.5
	shell-words@1.1.0
	signal-hook@0.3.17
	signal-hook-registry@1.4.1
	signature@2.2.0
	similar@2.4.0
	simplelog@0.12.1
	slab@0.4.9
	socket2@0.5.5
	spin@0.9.8
	spki@0.7.3
	strsim@0.10.0
	strum@0.26.1
	strum_macros@0.26.1
	subtle@2.5.0
	syn@1.0.109
	syn@2.0.48
	sync_wrapper@0.1.2
	sys-info@0.9.1
	system-configuration@0.5.1
	system-configuration-sys@0.5.0
	tabled@0.15.0
	tabled_derive@0.7.0
	tar@0.4.40
	tempfile@3.9.0
	tera@1.19.1
	termcolor@1.1.3
	terminal_size@0.3.0
	thiserror@1.0.56
	thiserror-impl@1.0.56
	thread_local@1.1.7
	time@0.3.32
	time-core@0.1.2
	time-macros@0.2.17
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	tokio@1.36.0
	tokio-native-tls@0.3.1
	tokio-rustls@0.24.1
	tokio-util@0.7.10
	toml@0.8.9
	toml_datetime@0.6.5
	toml_edit@0.21.1
	tower-service@0.3.2
	tracing@0.1.40
	tracing-core@0.1.32
	tracing-error@0.2.0
	tracing-subscriber@0.3.18
	try-lock@0.2.5
	typenum@1.17.0
	ucd-trie@0.1.6
	unic-char-property@0.9.0
	unic-char-range@0.9.0
	unic-common@0.9.0
	unic-segment@0.9.0
	unic-ucd-segment@0.9.0
	unic-ucd-version@0.9.0
	unicode-bidi@0.3.15
	unicode-ident@1.0.12
	unicode-normalization@0.1.22
	unicode-segmentation@1.10.1
	unicode-width@0.1.11
	untrusted@0.9.0
	url@2.5.0
	urlencoding@2.1.3
	utf8parse@0.2.1
	valuable@0.1.0
	vcpkg@0.2.15
	version_check@0.9.4
	versions@6.1.0
	vte@0.10.1
	vte_generate_state_changes@0.1.1
	walkdir@2.4.0
	want@0.3.1
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen@0.2.90
	wasm-bindgen-backend@0.2.90
	wasm-bindgen-futures@0.4.40
	wasm-bindgen-macro@0.2.90
	wasm-bindgen-macro-support@0.2.90
	wasm-bindgen-shared@0.2.90
	web-sys@0.3.67
	webpki-roots@0.25.4
	which@6.0.0
	winapi@0.3.9
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.6
	winapi-x86_64-pc-windows-gnu@0.4.0
	windows-core@0.52.0
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-targets@0.48.5
	windows-targets@0.52.0
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.0
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.0
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.0
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.0
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.0
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.0
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.0
	winnow@0.5.37
	winreg@0.50.0
	xattr@1.3.1
	yaml-rust@0.4.5
	yansi@0.5.1
	zeroize@1.7.0
	zip@0.6.6
	zipsign-api@0.1.1
"

inherit cargo

DESCRIPTION="The front-end to your dev env"
# Double check the homepage as the cargo_metadata crate
# does not provide this value so instead repository is used
HOMEPAGE="https://github.com/jdx/mise"
SRC_URI="https://github.com/jdx/mise/archive/refs/tags/v${PV}.tar.gz
${CARGO_CRATE_URIS}"

# License set may be more restrictive as OR is not respected
# use cargo-license for a more accurate license picture
LICENSE="0BSD Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD BSD-1 Boost-1.0 ISC MIT MPL-2.0 Unicode-DFS-2016 Unlicense ZLIB"
SLOT="0"
KEYWORDS="amd64 arm64 x86"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

# rust does not use *FLAGS from make.conf, silence portage warning
# update with proper path to binaries this crate installs, omit leading /
QA_FLAGS_IGNORED="usr/bin/${PN}"