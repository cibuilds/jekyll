# vim:set ft=dockerfile:

FROM cibuilds/base:2018.09

LABEL maintainer="Ricardo N Feliciano (FelicianoTech) <Ricardo@Feliciano.Tech>"

ENV MD_PROOFER_VERSION=0.2.1
ENV GH_URL=https://github.com/felicianotech/md-proofer/releases/download/v${MD_PROOFER_VERSION}/md-proofer--v${MD_PROOFER_VERSION}--linux-amd64.tar.gz

RUN curl -sSL "$GH_URL" | tar -xz -C /usr/local/bin/

RUN apk --no-cache add \
	build-base \
	libffi-dev \
	ruby-dev \
	ruby-full \
	zlib-dev

ENV JEKYLL_VERSION=3.8.5

RUN	gem install \
		bundler \
		html-proofer \
		jekyll:$JEKYLL_VERSION \
	--no-document && \
	rm -rf /usr/lib/ruby/gemes/*/cache

RUN bundle config --global silence_root_warning 1

WORKDIR /root/project

EXPOSE 4000
