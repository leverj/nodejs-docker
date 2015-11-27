FROM debian
RUN apt-get update \
    && apt-get install -y \
    ca-certificates  curl   wget \
    bzr   git   mercurial   openssh-client   subversion \
    autoconf   automake   bzip2   file   g++   gcc   imagemagick   libbz2-dev   libc6-dev   libcurl4-openssl-dev   libevent-dev \
    libffi-dev   libgeoip-dev   libglib2.0-dev   libjpeg-dev   liblzma-dev   libmagickcore-dev   libmagickwand-dev   libmysqlclient-dev \
    libncurses-dev   libpng-dev   libpq-dev   libreadline-dev   libsqlite3-dev   libssl-dev   libtool   libwebp-dev   libxml2-dev  \
    libxslt-dev   libyaml-dev   make   patch   xz-utils   zlib1g-dev \
    && (for key in  \
    9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93 \
    FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D   ; \
    do gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done )\
    && curl -SLO "https://nodejs.org/dist/v4.2.2/node-v4.2.2-linux-x64.tar.gz"  \
    && curl -SLO "https://nodejs.org/dist/v4.2.2/SHASUMS256.txt.asc" \
    && gpg --verify SHASUMS256.txt.asc \
    && grep " node-v4.2.2-linux-x64.tar.gz\$" SHASUMS256.txt.asc | sha256sum -c - \
    && tar -xzf "node-v4.2.2-linux-x64.tar.gz" -C /usr/local --strip-components=1  \
    && rm "node-v4.2.2-linux-x64.tar.gz" SHASUMS256.txt.asc \
    && mkdir src

