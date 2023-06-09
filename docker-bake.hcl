variable "RELEASE" {
    default = "5"
}

group "default" {
    targets = [
        "3_3_0-preview1-sid",
        "3_2_2-sid",
        "3_2_2-bullseye",
        "3_2_2-bookworm",
        "3_2_2-jammy",
        "3_2_2-lunar",
        "3_1_4-sid",
        "3_1_4-bullseye",
        "3_1_4-bookworm",
        "3_1_4-jammy",
        "3_1_4-lunar",
        "3_0_6-sid",
        "3_0_6-bullseye",
        "3_0_6-bookworm",
        "3_0_6-jammy",
        "3_0_6-lunar",
        "2_7_8-bullseye",
    ]
}

group "3_3_0-preview1" {
    targets = [
        "3_3_0-preview1-sid",
        "3_3_0-preview1-bullseye",
        "3_3_0-preview1-bookworm",
        "3_3_0-preview1-jammy",
        "3_3_0-preview1-lunar"
    ]
}

group "3_2_2" {
    targets = [
        "3_2_2-sid",
        "3_2_2-bullseye",
        "3_2_2-bookworm",
        "3_2_2-jammy",
        "3_2_2-lunar"
    ]
}

group "3_1_4" {
    targets = [
        "3_1_4-sid",
        "3_1_4-bullseye",
        "3_1_4-bookworm",
        "3_1_4-jammy",
        "3_1_4-lunar"
    ]
}

group "3_0_6" {
    targets = [
        "3_0_6-sid",
        "3_0_6-bullseye",
        "3_0_6-bookworm",
        "3_0_6-jammy",
        "3_0_6-lunar"
    ]
}

group "2_7_8" {
    targets = [
        "2_7_8-bullseye"
    ]
}

group "sid" {
    targets = [
        "3_3_0-preview1-sid",
        "3_2_2-sid",
        "3_1_4-sid",
        "3_0_6-sid"
    ]
}

group "bullseye" {
    targets = [
        "3_3_0-preview1-bullseye",
        "3_2_2-bullseye",
        "3_1_4-bullseye",
        "3_0_6-bullseye",
        "2_7_8-bullseye"
    ]
}

group "bookworm" {
    targets = [
        "3_3_0-preview1-bookworm",
        "3_2_2-bookworm",
        "3_1_4-bookworm",
        "3_0_6-bookworm"
    ]
}

group "jammy" {
    targets = [
        "3_3_0-preview1-jammy",
        "3_2_2-jammy",
        "3_1_4-jammy",
        "3_0_6-jammy"
    ]
}

group "lunar" {
    targets = [
        "3_3_0-preview1-lunar",
        "3_2_2-lunar",
        "3_1_4-lunar",
        "3_0_6-lunar"
    ]
}

target "3_3_0-preview1-sid" {
    output = ["type=local,dest=out/3.3.0-preview1/sid"]
    platforms = ["linux/amd64", "linux/arm64"]
    args = {
        RELEASE = "${RELEASE}"
        BASE_IMAGE = "docker.io/library/debian:unstable"
        DISTRIBUTION = "sid"
        RUBY_VERSION = "3.3.0-preview1"
        PKG_VERSION = "3.3.0"
        PKG_PRERELEASE = "preview1-"
        RUBY_SOURCE = "https://cache.ruby-lang.org/pub/ruby/3.3/ruby-3.3.0-preview1.tar.gz"
        RUBY_SHA256 = "c3454a911779b8d747ab0ea87041030d002d533edacb2485fe558b7084da25ed"

        LIBSSL_PACKAGE = "libssl3"
        LIBYAML_PACKAGE = "libyaml-0-2"
        ZLIB_PACKAGE = "zlib1g"
        LIBREADLINE_PACKAGE = "libreadline8"
        LIBFFI_PACKAGE = "libffi8"
        LIBGMP_PACKAGE = "libgmp10"
    }
}

target "3_3_0-preview1-bullseye" {
    output = ["type=local,dest=out/3.3.0-preview1/bullseye"]
    platforms = ["linux/amd64", "linux/arm64"]
    args = {
        RELEASE = "${RELEASE}"
        BASE_IMAGE = "docker.io/library/debian:bullseye"
        DISTRIBUTION = "bullseye"
        RUBY_VERSION = "3.3.0-preview1"
        PKG_VERSION = "3.3.0"
        PKG_PRERELEASE = "preview1-"
        RUBY_SOURCE = "https://cache.ruby-lang.org/pub/ruby/3.3/ruby-3.3.0-preview1.tar.gz"
        RUBY_SHA256 = "c3454a911779b8d747ab0ea87041030d002d533edacb2485fe558b7084da25ed"

        LIBSSL_PACKAGE = "libssl1.1"
        LIBYAML_PACKAGE = "libyaml-0-2"
        ZLIB_PACKAGE = "zlib1g"
        LIBREADLINE_PACKAGE = "libreadline8"
        LIBFFI_PACKAGE = "libffi7"
        LIBGMP_PACKAGE = "libgmp10"
    }
}

target "3_3_0-preview1-bookworm" {
    output = ["type=local,dest=out/3.3.0-preview1/bookworm"]
    platforms = ["linux/amd64", "linux/arm64"]
    args = {
        RELEASE = "${RELEASE}"
        BASE_IMAGE = "docker.io/library/debian:bookworm"
        DISTRIBUTION = "bookworm"
        RUBY_VERSION = "3.3.0-preview1"
        PKG_VERSION = "3.3.0"
        PKG_PRERELEASE = "preview1-"
        RUBY_SOURCE = "https://cache.ruby-lang.org/pub/ruby/3.3/ruby-3.3.0-preview1.tar.gz"
        RUBY_SHA256 = "c3454a911779b8d747ab0ea87041030d002d533edacb2485fe558b7084da25ed"

        LIBSSL_PACKAGE = "libssl3"
        LIBYAML_PACKAGE = "libyaml-0-2"
        ZLIB_PACKAGE = "zlib1g"
        LIBREADLINE_PACKAGE = "libreadline8"
        LIBFFI_PACKAGE = "libffi8"
        LIBGMP_PACKAGE = "libgmp10"
    }
}

target "3_3_0-preview1-jammy" {
    output = ["type=local,dest=out/3.3.0-preview1/jammy"]
    platforms = ["linux/amd64", "linux/arm64"]
    args = {
        RELEASE = "${RELEASE}"
        BASE_IMAGE = "docker.io/library/ubuntu:jammy"
        DISTRIBUTION = "jammy"
        RUBY_VERSION = "3.3.0-preview1"
        PKG_VERSION = "3.3.0"
        PKG_PRERELEASE = "preview1-"
        RUBY_SOURCE = "https://cache.ruby-lang.org/pub/ruby/3.3/ruby-3.3.0-preview1.tar.gz"
        RUBY_SHA256 = "c3454a911779b8d747ab0ea87041030d002d533edacb2485fe558b7084da25ed"

        LIBSSL_PACKAGE = "libssl3"
        LIBYAML_PACKAGE = "libyaml-0-2"
        ZLIB_PACKAGE = "zlib1g"
        LIBREADLINE_PACKAGE = "libreadline8"
        LIBFFI_PACKAGE = "libffi8"
        LIBGMP_PACKAGE = "libgmp10"
    }
}

target "3_3_0-preview1-lunar" {
    output = ["type=local,dest=out/3.3.0-preview1/lunar"]
    platforms = ["linux/amd64", "linux/arm64"]
    args = {
        RELEASE = "${RELEASE}"
        BASE_IMAGE = "docker.io/library/ubuntu:lunar"
        DISTRIBUTION = "lunar"
        RUBY_VERSION = "3.3.0-preview1"
        PKG_VERSION = "3.3.0"
        PKG_PRERELEASE = "preview1-"
        RUBY_SOURCE = "https://cache.ruby-lang.org/pub/ruby/3.3/ruby-3.3.0-preview1.tar.gz"
        RUBY_SHA256 = "c3454a911779b8d747ab0ea87041030d002d533edacb2485fe558b7084da25ed"

        LIBSSL_PACKAGE = "libssl3"
        LIBYAML_PACKAGE = "libyaml-0-2"
        ZLIB_PACKAGE = "zlib1g"
        LIBREADLINE_PACKAGE = "libreadline8"
        LIBFFI_PACKAGE = "libffi8"
        LIBGMP_PACKAGE = "libgmp10"
    }
}

target "3_2_2-sid" {
    output = ["type=local,dest=out/3.2.2/sid"]
    platforms = ["linux/amd64", "linux/arm64"]
    args = {
        RELEASE = "${RELEASE}"
        BASE_IMAGE = "docker.io/library/debian:unstable"
        DISTRIBUTION = "sid"
        RUBY_VERSION = "3.2.2"
        RUBY_SOURCE = "https://cache.ruby-lang.org/pub/ruby/3.2/ruby-3.2.2.tar.gz"
        RUBY_SHA256 = "96c57558871a6748de5bc9f274e93f4b5aad06cd8f37befa0e8d94e7b8a423bc"

        LIBSSL_PACKAGE = "libssl3"
        LIBYAML_PACKAGE = "libyaml-0-2"
        ZLIB_PACKAGE = "zlib1g"
        LIBREADLINE_PACKAGE = "libreadline8"
        LIBFFI_PACKAGE = "libffi8"
        LIBGMP_PACKAGE = "libgmp10"
    }
}

target "3_2_2-bullseye" {
    output = ["type=local,dest=out/3.2.2/bullseye"]
    platforms = ["linux/amd64", "linux/arm64"]
    args = {
        RELEASE = "${RELEASE}"
        BASE_IMAGE = "docker.io/library/debian:bullseye"
        DISTRIBUTION = "bullseye"
        RUBY_VERSION = "3.2.2"
        RUBY_SOURCE = "https://cache.ruby-lang.org/pub/ruby/3.2/ruby-3.2.2.tar.gz"
        RUBY_SHA256 = "96c57558871a6748de5bc9f274e93f4b5aad06cd8f37befa0e8d94e7b8a423bc"

        LIBSSL_PACKAGE = "libssl1.1"
        LIBYAML_PACKAGE = "libyaml-0-2"
        ZLIB_PACKAGE = "zlib1g"
        LIBREADLINE_PACKAGE = "libreadline8"
        LIBFFI_PACKAGE = "libffi7"
        LIBGMP_PACKAGE = "libgmp10"
    }
}

target "3_2_2-bookworm" {
    output = ["type=local,dest=out/3.2.2/bookworm"]
    platforms = ["linux/amd64", "linux/arm64"]
    args = {
        RELEASE = "${RELEASE}"
        BASE_IMAGE = "docker.io/library/debian:bookworm"
        DISTRIBUTION = "bookworm"
        RUBY_VERSION = "3.2.2"
        RUBY_SOURCE = "https://cache.ruby-lang.org/pub/ruby/3.2/ruby-3.2.2.tar.gz"
        RUBY_SHA256 = "96c57558871a6748de5bc9f274e93f4b5aad06cd8f37befa0e8d94e7b8a423bc"

        LIBSSL_PACKAGE = "libssl3"
        LIBYAML_PACKAGE = "libyaml-0-2"
        ZLIB_PACKAGE = "zlib1g"
        LIBREADLINE_PACKAGE = "libreadline8"
        LIBFFI_PACKAGE = "libffi8"
        LIBGMP_PACKAGE = "libgmp10"
    }
}

target "3_2_2-jammy" {
    output = ["type=local,dest=out/3.2.2/jammy"]
    platforms = ["linux/amd64", "linux/arm64"]
    args = {
        RELEASE = "${RELEASE}"
        BASE_IMAGE = "docker.io/library/ubuntu:jammy"
        DISTRIBUTION = "jammy"
        RUBY_VERSION = "3.2.2"
        RUBY_SOURCE = "https://cache.ruby-lang.org/pub/ruby/3.2/ruby-3.2.2.tar.gz"
        RUBY_SHA256 = "96c57558871a6748de5bc9f274e93f4b5aad06cd8f37befa0e8d94e7b8a423bc"

        LIBSSL_PACKAGE = "libssl3"
        LIBYAML_PACKAGE = "libyaml-0-2"
        ZLIB_PACKAGE = "zlib1g"
        LIBREADLINE_PACKAGE = "libreadline8"
        LIBFFI_PACKAGE = "libffi8"
        LIBGMP_PACKAGE = "libgmp10"
    }
}

target "3_2_2-lunar" {
    output = ["type=local,dest=out/3.2.2/lunar"]
    platforms = ["linux/amd64", "linux/arm64"]
    args = {
        RELEASE = "${RELEASE}"
        BASE_IMAGE = "docker.io/library/ubuntu:lunar"
        DISTRIBUTION = "lunar"
        RUBY_VERSION = "3.2.2"
        RUBY_SOURCE = "https://cache.ruby-lang.org/pub/ruby/3.2/ruby-3.2.2.tar.gz"
        RUBY_SHA256 = "96c57558871a6748de5bc9f274e93f4b5aad06cd8f37befa0e8d94e7b8a423bc"

        LIBSSL_PACKAGE = "libssl3"
        LIBYAML_PACKAGE = "libyaml-0-2"
        ZLIB_PACKAGE = "zlib1g"
        LIBREADLINE_PACKAGE = "libreadline8"
        LIBFFI_PACKAGE = "libffi8"
        LIBGMP_PACKAGE = "libgmp10"
    }
}

target "3_1_4-sid" {
    output = ["type=local,dest=out/3.1.4/sid"]
    platforms = ["linux/amd64", "linux/arm64"]
    args = {
        RELEASE = "${RELEASE}"
        BASE_IMAGE = "docker.io/library/debian:unstable"
        DISTRIBUTION = "sid"
        RUBY_VERSION = "3.1.4"
        RUBY_SOURCE = "https://cache.ruby-lang.org/pub/ruby/3.1/ruby-3.1.4.tar.gz"
        RUBY_SHA256 = "a3d55879a0dfab1d7141fdf10d22a07dbf8e5cdc4415da1bde06127d5cc3c7b6"

        LIBSSL_PACKAGE = "libssl3"
        LIBYAML_PACKAGE = "libyaml-0-2"
        ZLIB_PACKAGE = "zlib1g"
        LIBREADLINE_PACKAGE = "libreadline8"
        LIBFFI_PACKAGE = "libffi8"
        LIBGMP_PACKAGE = "libgmp10"
    }
}

target "3_1_4-bullseye" {
    output = ["type=local,dest=out/3.1.4/bullseye"]
    platforms = ["linux/amd64", "linux/arm64"]
    args = {
        RELEASE = "${RELEASE}"
        BASE_IMAGE = "docker.io/library/debian:bullseye"
        DISTRIBUTION = "bullseye"
        RUBY_VERSION = "3.1.4"
        RUBY_SOURCE = "https://cache.ruby-lang.org/pub/ruby/3.1/ruby-3.1.4.tar.gz"
        RUBY_SHA256 = "a3d55879a0dfab1d7141fdf10d22a07dbf8e5cdc4415da1bde06127d5cc3c7b6"

        LIBSSL_PACKAGE = "libssl1.1"
        LIBYAML_PACKAGE = "libyaml-0-2"
        ZLIB_PACKAGE = "zlib1g"
        LIBREADLINE_PACKAGE = "libreadline8"
        LIBFFI_PACKAGE = "libffi7"
        LIBGMP_PACKAGE = "libgmp10"
    }
}

target "3_1_4-bookworm" {
    output = ["type=local,dest=out/3.1.4/bookworm"]
    platforms = ["linux/amd64", "linux/arm64"]
    args = {
        RELEASE = "${RELEASE}"
        BASE_IMAGE = "docker.io/library/debian:bookworm"
        DISTRIBUTION = "bookworm"
        RUBY_VERSION = "3.1.4"
        RUBY_SOURCE = "https://cache.ruby-lang.org/pub/ruby/3.1/ruby-3.1.4.tar.gz"
        RUBY_SHA256 = "a3d55879a0dfab1d7141fdf10d22a07dbf8e5cdc4415da1bde06127d5cc3c7b6"

        LIBSSL_PACKAGE = "libssl3"
        LIBYAML_PACKAGE = "libyaml-0-2"
        ZLIB_PACKAGE = "zlib1g"
        LIBREADLINE_PACKAGE = "libreadline8"
        LIBFFI_PACKAGE = "libffi8"
        LIBGMP_PACKAGE = "libgmp10"
    }
}

target "3_1_4-jammy" {
    output = ["type=local,dest=out/3.1.4/jammy"]
    platforms = ["linux/amd64", "linux/arm64"]
    args = {
        RELEASE = "${RELEASE}"
        BASE_IMAGE = "docker.io/library/ubuntu:jammy"
        DISTRIBUTION = "jammy"
        RUBY_VERSION = "3.1.4"
        RUBY_SOURCE = "https://cache.ruby-lang.org/pub/ruby/3.1/ruby-3.1.4.tar.gz"
        RUBY_SHA256 = "a3d55879a0dfab1d7141fdf10d22a07dbf8e5cdc4415da1bde06127d5cc3c7b6"

        LIBSSL_PACKAGE = "libssl3"
        LIBYAML_PACKAGE = "libyaml-0-2"
        ZLIB_PACKAGE = "zlib1g"
        LIBREADLINE_PACKAGE = "libreadline8"
        LIBFFI_PACKAGE = "libffi8"
        LIBGMP_PACKAGE = "libgmp10"
    }
}

target "3_1_4-lunar" {
    output = ["type=local,dest=out/3.1.4/lunar"]
    platforms = ["linux/amd64", "linux/arm64"]
    args = {
        RELEASE = "${RELEASE}"
        BASE_IMAGE = "docker.io/library/ubuntu:lunar"
        DISTRIBUTION = "lunar"
        RUBY_VERSION = "3.1.4"
        RUBY_SOURCE = "https://cache.ruby-lang.org/pub/ruby/3.1/ruby-3.1.4.tar.gz"
        RUBY_SHA256 = "a3d55879a0dfab1d7141fdf10d22a07dbf8e5cdc4415da1bde06127d5cc3c7b6"

        LIBSSL_PACKAGE = "libssl3"
        LIBYAML_PACKAGE = "libyaml-0-2"
        ZLIB_PACKAGE = "zlib1g"
        LIBREADLINE_PACKAGE = "libreadline8"
        LIBFFI_PACKAGE = "libffi8"
        LIBGMP_PACKAGE = "libgmp10"
    }
}

target "3_0_6-sid" {
    output = ["type=local,dest=out/3.0.6/sid"]
    platforms = ["linux/amd64", "linux/arm64"]
    args = {
        RELEASE = "${RELEASE}"
        BASE_IMAGE = "docker.io/library/debian:unstable"
        DISTRIBUTION = "sid"
        RUBY_VERSION = "3.0.6"
        RUBY_SOURCE = "https://cache.ruby-lang.org/pub/ruby/3.0/ruby-3.0.6.tar.gz"
        RUBY_SHA256 = "6e6cbd490030d7910c0ff20edefab4294dfcd1046f0f8f47f78b597987ac683e"

        LIBSSL_PACKAGE = "libssl3"
        LIBYAML_PACKAGE = "libyaml-0-2"
        ZLIB_PACKAGE = "zlib1g"
        LIBREADLINE_PACKAGE = "libreadline8"
        LIBFFI_PACKAGE = "libffi8"
        LIBGMP_PACKAGE = "libgmp10"
    }
}

target "3_0_6-bullseye" {
    output = ["type=local,dest=out/3.0.6/bullseye"]
    platforms = ["linux/amd64", "linux/arm64"]
    args = {
        RELEASE = "${RELEASE}"
        BASE_IMAGE = "docker.io/library/debian:bullseye"
        DISTRIBUTION = "bullseye"
        RUBY_VERSION = "3.0.6"
        RUBY_SOURCE = "https://cache.ruby-lang.org/pub/ruby/3.0/ruby-3.0.6.tar.gz"
        RUBY_SHA256 = "6e6cbd490030d7910c0ff20edefab4294dfcd1046f0f8f47f78b597987ac683e"

        LIBSSL_PACKAGE = "libssl1.1"
        LIBYAML_PACKAGE = "libyaml-0-2"
        ZLIB_PACKAGE = "zlib1g"
        LIBREADLINE_PACKAGE = "libreadline8"
        LIBFFI_PACKAGE = "libffi7"
        LIBGMP_PACKAGE = "libgmp10"
    }
}

target "3_0_6-bookworm" {
    output = ["type=local,dest=out/3.0.6/bookworm"]
    platforms = ["linux/amd64", "linux/arm64"]
    args = {
        RELEASE = "${RELEASE}"
        BASE_IMAGE = "docker.io/library/debian:bookworm"
        DISTRIBUTION = "bookworm"
        RUBY_VERSION = "3.0.6"
        RUBY_SOURCE = "https://cache.ruby-lang.org/pub/ruby/3.0/ruby-3.0.6.tar.gz"
        RUBY_SHA256 = "6e6cbd490030d7910c0ff20edefab4294dfcd1046f0f8f47f78b597987ac683e"

        LIBSSL_PACKAGE = "libssl3"
        LIBYAML_PACKAGE = "libyaml-0-2"
        ZLIB_PACKAGE = "zlib1g"
        LIBREADLINE_PACKAGE = "libreadline8"
        LIBFFI_PACKAGE = "libffi8"
        LIBGMP_PACKAGE = "libgmp10"
    }
}

target "3_0_6-jammy" {
    output = ["type=local,dest=out/3.0.6/jammy"]
    platforms = ["linux/amd64", "linux/arm64"]
    args = {
        RELEASE = "${RELEASE}"
        BASE_IMAGE = "docker.io/library/ubuntu:jammy"
        DISTRIBUTION = "jammy"
        RUBY_VERSION = "3.0.6"
        RUBY_SOURCE = "https://cache.ruby-lang.org/pub/ruby/3.0/ruby-3.0.6.tar.gz"
        RUBY_SHA256 = "6e6cbd490030d7910c0ff20edefab4294dfcd1046f0f8f47f78b597987ac683e"

        LIBSSL_PACKAGE = "libssl3"
        LIBYAML_PACKAGE = "libyaml-0-2"
        ZLIB_PACKAGE = "zlib1g"
        LIBREADLINE_PACKAGE = "libreadline8"
        LIBFFI_PACKAGE = "libffi8"
        LIBGMP_PACKAGE = "libgmp10"
    }
}

target "3_0_6-lunar" {
    output = ["type=local,dest=out/3.0.6/lunar"]
    platforms = ["linux/amd64", "linux/arm64"]
    args = {
        RELEASE = "${RELEASE}"
        BASE_IMAGE = "docker.io/library/ubuntu:lunar"
        DISTRIBUTION = "lunar"
        RUBY_VERSION = "3.0.6"
        RUBY_SOURCE = "https://cache.ruby-lang.org/pub/ruby/3.0/ruby-3.0.6.tar.gz"
        RUBY_SHA256 = "6e6cbd490030d7910c0ff20edefab4294dfcd1046f0f8f47f78b597987ac683e"

        LIBSSL_PACKAGE = "libssl3"
        LIBYAML_PACKAGE = "libyaml-0-2"
        ZLIB_PACKAGE = "zlib1g"
        LIBREADLINE_PACKAGE = "libreadline8"
        LIBFFI_PACKAGE = "libffi8"
        LIBGMP_PACKAGE = "libgmp10"
    }
}

target "2_7_8-bullseye" {
    output = ["type=local,dest=out/2.7.8/bullseye"]
    platforms = ["linux/amd64", "linux/arm64"]
    args = {
        RELEASE = "${RELEASE}"
        BASE_IMAGE = "docker.io/library/debian:bullseye"
        DISTRIBUTION = "bullseye"
        RUBY_VERSION = "2.7.8"
        RUBY_SOURCE = "https://cache.ruby-lang.org/pub/ruby/2.7/ruby-2.7.8.tar.gz"
        RUBY_SHA256 = "c2dab63cbc8f2a05526108ad419efa63a67ed4074dbbcf9fc2b1ca664cb45ba0"

        LIBSSL_PACKAGE = "libssl1.1"
        LIBYAML_PACKAGE = "libyaml-0-2"
        ZLIB_PACKAGE = "zlib1g"
        LIBREADLINE_PACKAGE = "libreadline8"
        LIBFFI_PACKAGE = "libffi7"
        LIBGMP_PACKAGE = "libgmp10"
    }
}
