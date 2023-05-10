ARG BASE_IMAGE=docker.io/library/debian:bullseye
FROM ${BASE_IMAGE} AS build

SHELL ["/bin/bash", "-euxo", "pipefail", "-c"]

RUN apt-get update \
 && apt-get install --no-install-recommends -y ca-certificates \
 && echo 'deb [trusted=yes] https://repo.goreleaser.com/apt/ /' > /etc/apt/sources.list.d/goreleaser.list \
 && apt-get update \
 && apt-get install --no-install-recommends -y \
        nfpm \
        gettext-base \
        curl \
        build-essential \
        libssl-dev \
        libyaml-dev \
        zlib1g-dev \
        libreadline-dev \
        libffi-dev \
        libgmp-dev \
 && curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | bash -s -- --profile minimal -y
WORKDIR /build
ENV DESTDIR=/build/dest
ARG RUBY_VERSION=3.2.2 \
    RUBY_SOURCE=https://cache.ruby-lang.org/pub/ruby/3.2/ruby-3.2.2.tar.gz \
    RUBY_SHA256=96c57558871a6748de5bc9f274e93f4b5aad06cd8f37befa0e8d94e7b8a423bc
RUN curl "${RUBY_SOURCE}" -o ruby.tar.gz \
 && echo "${RUBY_SHA256} ruby.tar.gz" | sha256sum -c - \
 && tar -xvf ruby.tar.gz
WORKDIR /build/ruby-${RUBY_VERSION}/build
RUN source "$HOME/.cargo/env" \
 && ../configure --prefix=/usr --enable-shared --enable-yjit \
 && make -j8 \
 && make install
WORKDIR /build
ARG RELEASE=1 \
    DISTRIBUTION=bullseye \
    LIBSSL_PACKAGE=libssl1.1 \
    LIBYAML_PACKAGE=libyaml-0-2 \
    ZLIB_PACKAGE=zlib1g \
    LIBREADLINE_PACKAGE=libreadline8 \
    LIBFFI_PACKAGE=libffi7 \
    LIBGMP_PACKAGE=libgmp10
ENV RELEASE=${RELEASE} \
    DISTRIBUTION=${DISTRIBUTION} \
    LIBSSL_PACKAGE=${LIBSSL_PACKAGE} \
    LIBYAML_PACKAGE=${LIBYAML_PACKAGE} \
    ZLIB_PACKAGE=${ZLIB_PACKAGE} \
    LIBREADLINE_PACKAGE=${LIBREADLINE_PACKAGE} \
    LIBFFI_PACKAGE=${LIBFFI_PACKAGE} \
    LIBGMP_PACKAGE=${LIBGMP_PACKAGE}
COPY nfpm.yaml nfpm.preenv.yaml
RUN envsubst < nfpm.preenv.yaml > nfpm.yaml \
 && nfpm package --packager deb --target .
COPY nfpm.meta.yaml nfpm.preenv.meta.yaml
RUN envsubst < nfpm.preenv.meta.yaml > nfpm.meta.yaml \
 && nfpm package --config nfpm.meta.yaml --packager deb --target .
COPY nfpm.dev.yaml nfpm.preenv.dev.yaml
RUN envsubst < nfpm.preenv.dev.yaml > nfpm.dev.yaml \
 && nfpm package --config nfpm.dev.yaml --packager deb --target .
COPY nfpm.dev.meta.yaml nfpm.preenv.dev.meta.yaml
RUN envsubst < nfpm.preenv.dev.meta.yaml > nfpm.dev.meta.yaml \
 && nfpm package --config nfpm.dev.meta.yaml --packager deb --target .

FROM ${BASE_IMAGE} AS test

COPY --from=build /build/*.deb /build/
RUN apt-get update \
 && apt-get install --no-install-recommends -y /build/*.deb \
 && ruby --version \
 && RUBY_YJIT_ENABLE=1 ruby --version

FROM scratch

COPY --from=test /build/*.deb /
