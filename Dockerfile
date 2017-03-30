FROM ubuntu:xenial
RUN echo start \
	&& apt-get update \
	&& apt-get install -y build-essential curl python \
	&& curl -sL https://deb.nodesource.com/setup_6.x | bash - \
	&& apt-get update \
	&& apt-get install -y nodejs \
	&& rm -rf /var/lib/apt/lists/* \
    && mkdir dist \
	&& echo end 


