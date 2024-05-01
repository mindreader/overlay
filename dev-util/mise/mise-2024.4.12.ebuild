# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.2

EAPI=8

CRATES="
	addr2line@0.21.0
	adler@1.0.2
	aho-corasick@1.1.3
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	ansi-str@0.8.0
	ansitok@0.2.0
	anstream@0.6.13
	anstyle-parse@0.2.3
	anstyle-query@1.0.2
	anstyle-wincon@3.0.2
	anstyle@1.0.6
	arbitrary@1.3.2
	arrayvec@0.5.2
	assert_cmd@2.0.14
	async-compression@0.4.9
	autocfg@1.2.0
	backtrace@0.3.71
	base64@0.21.7
	base64@0.22.0
	base64ct@1.6.0
	bitflags@1.3.2
	bitflags@2.5.0
	block-buffer@0.10.4
	bstr@1.9.1
	built@0.7.2
	bumpalo@3.16.0
	bytecount@0.6.8
	byteorder@1.5.0
	bytes@1.6.0
	calm_io@0.1.1
	calmio_filters@0.1.0
	cc@1.0.96
	cfg-if@1.0.0
	chrono@0.4.38
	ci_info@0.14.14
	clap@4.5.4
	clap_builder@4.5.2
	clap_derive@4.5.4
	clap_lex@0.7.0
	clap_mangen@0.2.20
	color-eyre@0.6.3
	color-print-proc-macro@0.3.6
	color-print@0.3.6
	color-spantrace@0.2.1
	colorchoice@1.0.0
	confique-macro@0.0.9
	confique@0.2.5
	console@0.15.8
	const-oid@0.9.6
	contracts@0.6.3
	core-foundation-sys@0.8.6
	core-foundation@0.9.4
	cpufeatures@0.2.12
	crc32fast@1.4.0
	crossbeam-deque@0.8.5
	crossbeam-epoch@0.9.18
	crossbeam-utils@0.8.19
	crypto-common@0.1.6
	ctor@0.2.8
	curve25519-dalek-derive@0.1.1
	curve25519-dalek@4.1.2
	demand@1.1.2
	der@0.7.9
	deranged@0.3.11
	derive_arbitrary@1.3.2
	diff@0.1.13
	difflib@0.4.0
	digest@0.10.7
	doc-comment@0.3.3
	dotenvy@0.15.7
	duct@0.13.7
	dunce@1.0.4
	ed25519-dalek@2.1.1
	ed25519@2.2.3
	either@1.11.0
	encode_unicode@0.3.6
	encoding_rs@0.8.34
	envmnt@0.10.4
	equivalent@1.0.1
	errno-dragonfly@0.1.2
	errno@0.2.8
	errno@0.3.8
	exec@0.3.1
	eyre@0.6.12
	fastrand@1.9.0
	fastrand@2.1.0
	fiat-crypto@0.2.8
	filetime@0.2.23
	fixedbitset@0.4.2
	flate2@1.0.30
	float-cmp@0.9.0
	fnv@1.0.7
	foreign-types-shared@0.1.1
	foreign-types@0.3.2
	form_urlencoded@1.2.1
	fsio@0.4.0
	fslock@0.2.1
	futures-channel@0.3.30
	futures-core@0.3.30
	futures-io@0.3.30
	futures-sink@0.3.30
	futures-task@0.3.30
	futures-util@0.3.30
	generic-array@0.14.7
	getrandom@0.2.14
	gimli@0.28.1
	git2@0.18.3
	globset@0.4.14
	globwalk@0.8.1
	globwalk@0.9.1
	h2@0.3.26
	hashbrown@0.12.3
	hashbrown@0.14.5
	heck@0.3.3
	heck@0.4.1
	heck@0.5.0
	hermit-abi@0.3.9
	home@0.5.9
	http-body@0.4.6
	http@0.2.12
	httparse@1.8.0
	httpdate@1.0.3
	humantime@2.1.0
	hyper-rustls@0.24.2
	hyper-tls@0.5.0
	hyper@0.14.28
	iana-time-zone-haiku@0.1.2
	iana-time-zone@0.1.60
	idna@0.5.0
	ignore@0.4.22
	indenter@0.3.3
	indexmap@1.9.3
	indexmap@2.2.6
	indicatif@0.17.8
	indoc@2.0.5
	insta@1.38.0
	instant@0.1.12
	ipnet@2.9.0
	itertools@0.12.1
	itoa@1.0.11
	jobserver@0.1.31
	js-sys@0.3.69
	kdl@4.6.0
	lazy_static@1.4.0
	libc@0.2.154
	libgit2-sys@0.16.2+1.7.2
	libz-sys@1.1.16
	linked-hash-map@0.5.6
	linux-raw-sys@0.4.13
	log@0.4.21
	memchr@2.7.2
	miette-derive@5.10.0
	miette@5.10.0
	mime@0.3.17
	minimal-lexical@0.2.1
	miniz_oxide@0.7.2
	mio@0.8.11
	native-tls@0.2.11
	nom@7.1.3
	normalize-line-endings@0.3.0
	num-conv@0.1.0
	num-traits@0.2.18
	num_cpus@1.16.0
	num_threads@0.1.7
	number_prefix@0.4.0
	object@0.32.2
	once_cell@1.19.0
	openssl-macros@0.1.1
	openssl-probe@0.1.5
	openssl-sys@0.9.102
	openssl@0.10.64
	os_pipe@1.1.5
	owo-colors@3.5.0
	papergrid@0.11.0
	paste@1.0.14
	path-absolutize@3.1.1
	path-dedot@3.1.1
	percent-encoding@2.3.1
	pest@2.7.9
	pest_derive@2.7.9
	pest_generator@2.7.9
	pest_meta@2.7.9
	petgraph@0.6.4
	pin-project-lite@0.2.14
	pin-utils@0.1.0
	pkcs8@0.10.2
	pkg-config@0.3.30
	platforms@3.4.0
	portable-atomic@1.6.0
	powerfmt@0.2.0
	ppv-lite86@0.2.17
	predicates-core@1.0.6
	predicates-tree@1.0.9
	predicates@3.1.0
	pretty_assertions@1.4.0
	proc-macro-error-attr@1.0.4
	proc-macro-error@1.0.4
	proc-macro2@1.0.81
	quick-xml@0.23.1
	quote@1.0.36
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	rayon-core@1.12.1
	rayon@1.10.0
	redox_syscall@0.4.1
	regex-automata@0.4.6
	regex-syntax@0.8.3
	regex@1.10.4
	reqwest@0.11.27
	ring@0.17.8
	rmp-serde@1.3.0
	rmp@0.8.14
	roff@0.2.1
	rustc-demangle@0.1.23
	rustc_version@0.4.0
	rustix@0.38.34
	rustls-native-certs@0.6.3
	rustls-pemfile@1.0.4
	rustls-webpki@0.101.7
	rustls@0.21.12
	rustversion@1.0.15
	ryu@1.0.17
	same-file@1.0.6
	schannel@0.1.23
	sct@0.7.1
	security-framework-sys@2.10.0
	security-framework@2.10.0
	self-replace@1.3.7
	self_update@0.39.0
	semver@1.0.22
	serde@1.0.199
	serde_derive@1.0.199
	serde_json@1.0.116
	serde_spanned@0.6.5
	serde_urlencoded@0.7.1
	sha2@0.10.8
	sharded-slab@0.1.7
	shared_child@1.0.0
	shell-escape@0.1.5
	shell-words@1.1.0
	signal-hook-registry@1.4.2
	signal-hook@0.3.17
	signature@2.2.0
	similar@2.5.0
	simplelog@0.12.2
	slab@0.4.9
	socket2@0.5.7
	spin@0.9.8
	spki@0.7.3
	strsim@0.11.1
	strum@0.26.2
	strum_macros@0.26.2
	subtle@2.5.0
	syn@1.0.109
	syn@2.0.60
	sync_wrapper@0.1.2
	sys-info@0.9.1
	system-configuration-sys@0.5.0
	system-configuration@0.5.1
	tabled@0.15.0
	tabled_derive@0.7.0
	tar@0.4.40
	tempfile@3.10.1
	tera@1.19.1
	termcolor@1.4.1
	terminal_size@0.3.0
	termtree@0.4.1
	test-case-core@3.3.1
	test-case-macros@3.3.1
	test-case@3.3.1
	thiserror-impl@1.0.59
	thiserror@1.0.59
	thread_local@1.1.8
	time-core@0.1.2
	time-macros@0.2.18
	time@0.3.36
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	tokio-native-tls@0.3.1
	tokio-rustls@0.24.1
	tokio-util@0.7.10
	tokio@1.37.0
	toml@0.8.12
	toml_datetime@0.6.5
	toml_edit@0.22.12
	tower-service@0.3.2
	tracing-core@0.1.32
	tracing-error@0.2.0
	tracing-subscriber@0.3.18
	tracing@0.1.40
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
	unicode-normalization@0.1.23
	unicode-segmentation@1.11.0
	unicode-width@0.1.12
	untrusted@0.9.0
	url@2.5.0
	urlencoding@2.1.3
	usage-lib@0.1.18
	utf8parse@0.2.1
	valuable@0.1.0
	vcpkg@0.2.15
	version_check@0.9.4
	versions@6.2.0
	vte@0.10.1
	vte_generate_state_changes@0.1.1
	wait-timeout@0.2.0
	walkdir@2.5.0
	want@0.3.1
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.92
	wasm-bindgen-futures@0.4.42
	wasm-bindgen-macro-support@0.2.92
	wasm-bindgen-macro@0.2.92
	wasm-bindgen-shared@0.2.92
	wasm-bindgen@0.2.92
	web-sys@0.3.69
	webpki-roots@0.25.4
	which@6.0.1
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.8
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-core@0.52.0
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-targets@0.48.5
	windows-targets@0.52.5
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.5
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.5
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.5
	windows_i686_gnullvm@0.52.5
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.5
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.5
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.5
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.5
	winnow@0.6.7
	winreg@0.50.0
	winsafe@0.0.19
	xattr@1.3.1
	xx@0.2.5
	yansi@0.5.1
	zeroize@1.7.0
	zip@1.1.3
	zipsign-api@0.1.1
"

inherit cargo

DESCRIPTION="The front-end to your dev env"
HOMEPAGE="https://mise.jdx.dev"
SRC_URI="https://github.com/jdx/mise/archive/refs/tags/v${PV}.tar.gz
${CARGO_CRATE_URIS}"

LICENSE="MIT"
# Dependent crate licenses
LICENSE+="
	Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD ISC MIT MPL-2.0
	Unicode-DFS-2016
"
SLOT="0"
KEYWORDS="amd64 arm64 x86"
