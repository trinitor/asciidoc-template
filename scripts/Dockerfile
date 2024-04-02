FROM ubuntu
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update && \
    apt upgrade -y && \
    apt install -y \
        ruby-bundler \
        w3m \
        ghostscript && \
    rm -rf /var/lib/apt/lists/*
COPY scripts/Gemfile /opt
RUN cd /opt && bundle install
WORKDIR /data
CMD ["bash", "/data/scripts/build.sh"]