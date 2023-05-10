variable "RELEASE" {
    default = "2"
}

group "default" {
    targets = [
        "3_2_2-sid",
        "3_2_2-bullseye",
        "3_2_2-bookworm",
        "3_2_2-jammy",
        "3_2_2-lunar",
        "3_1_4-sid",
        "3_1_4-bullseye",
        "3_1_4-bookworm",
        "3_1_4-jammy",
        "3_1_4-lunar"
    ]
}

target "3_2_2-sid" {
    output = ["type=local,dest=out/3.2.2/sid"]
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
