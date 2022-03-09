FROM ubuntu:20.04

ARG USER="builder"

LABEL maintainer="Your Name <your@email>"
LABEL org.opencontainers.image.authors="Your Name <your@email>"

LABEL org.into-docker.builder-user="${USER}"
LABEL org.into-docker.runner-image="alpine:3"
LABEL org.into-docker.runner-entrypoint="echo GO"

WORKDIR /into
ENV HOME="/into/home"
RUN useradd -d "${HOME}" -m "${USER}"
COPY into/ .
