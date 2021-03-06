FROM alpine:3.10

ARG BUILD_DATE
ARG BUILD_VERSION

# Labels
LABEL maintaner mirza.abazovic@gmail.com
LABEL org.label-schema.schema-version=${SCHEMA_VERSION}
LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.name="abazovic/hugo"
LABEL org.label-schema.description="Hugo image"
LABEL org.label-schema.vcs-url="https://github.com/MirzaAbazovic/docker-hugo"
LABEL org.label-schema.version=$BUILD_VERSION

ENV HUGO_FILENAME=hugo_extended_0.55.6_Linux-64bit.tar.gz 
ENV HUGO_DOWNLOAD_URL=https://github.com/gohugoio/hugo/releases/download/v0.55.6/hugo_extended_0.55.6_Linux-64bit.tar.gz

RUN apk add --no-cache \
		bash \
		build-base \
		ca-certificates \
		curl \
		git \
		libcurl \
		libc6-compat \
		libxml2-dev \
		libxslt-dev \
		openssh \
		rsync \
		wget \
        lftp

RUN wget $HUGO_DOWNLOAD_URL && \
	tar xzf $HUGO_FILENAME && \
	mv hugo /usr/bin/hugo && \
	rm $HUGO_FILENAME LICENSE README.md 