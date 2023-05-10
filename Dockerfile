ARG BASE_IMAGE=docker.io/library/debian:bullseye

FROM --platform=$BUILDPLATFORM docker.io/library/debian:stable AS buildplat

SHELL ["/bin/bash", "-euxo", "pipefail", "-c"]
RUN apt-get update \
 && apt-get install --no-install-recommends -y \
        ca-certificates \
        curl \
        gettext-base \
 && echo 'deb [trusted=yes] https://repo.goreleaser.com/apt/ /' > /etc/apt/sources.list.d/goreleaser.list \
 && apt-get update \
 && apt-get install --no-install-recommends -y nfpm

FROM --platform=$BUILDPLATFORM buildplat AS downloader

ARG RUBY_VERSION=3.2.2 \
    RUBY_SOURCE=https://cache.ruby-lang.org/pub/ruby/3.2/ruby-3.2.2.tar.gz \
    RUBY_SHA256=96c57558871a6748de5bc9f274e93f4b5aad06cd8f37befa0e8d94e7b8a423bc
WORKDIR /build
RUN curl "${RUBY_SOURCE}" -o ruby.tar.gz \
 && echo "${RUBY_SHA256} ruby.tar.gz" | sha256sum -c - \
 && tar -xvf ruby.tar.gz \
 && mv ruby-${RUBY_VERSION} ruby

FROM ${BASE_IMAGE} AS build

SHELL ["/bin/bash", "-euxo", "pipefail", "-c"]

RUN apt-get update \
 && apt-get install --no-install-recommends -y \
        curl \
        ca-certificates \
        build-essential \
        libssl-dev \
        libyaml-dev \
        zlib1g-dev \
        libreadline-dev \
        libffi-dev \
        libgmp-dev \
 && curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | bash -s -- --profile minimal -y

COPY --from=downloader /build/ruby /build/ruby
WORKDIR /build/ruby/build
ENV DESTDIR=/build/dest
RUN source "$HOME/.cargo/env" \
 && ../configure --prefix=/usr --enable-shared --enable-yjit \
 && make -j8 \
 && make install \
 && eval "$(dpkg-architecture)" \
 && echo "$DEB_HOST_ARCH" > /build/arch.txt

FROM --platform=$BUILDPLATFORM buildplat AS nfpm

COPY --from=build /build/dest /build/dest
COPY --from=build /build/arch.txt /build/arch.txt

WORKDIR /build
ARG RUBY_VERSION \
    TARGETARCH \
    RELEASE=1 \
    DISTRIBUTION=bullseye \
    LIBSSL_PACKAGE=libssl1.1 \
    LIBYAML_PACKAGE=libyaml-0-2 \
    ZLIB_PACKAGE=zlib1g \
    LIBREADLINE_PACKAGE=libreadline8 \
    LIBFFI_PACKAGE=libffi7 \
    LIBGMP_PACKAGE=libgmp10
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

COPY --from=nfpm /build/*.deb /build/
RUN apt-get update \
 && apt-get install --no-install-recommends -y /build/*.deb \
 && ruby --version \
 && RUBY_YJIT_ENABLE=1 ruby --version

FROM scratch

COPY --from=test /build/*.deb /
