FROM ubuntu:xenial
RUN echo start \
	&& apt-get update \
	&& apt-get install -y build-essential curl python \
	&& curl -sL https://deb.nodesource.com/setup_8.x | bash - \
	&& apt-get update \
	&& apt-get install -y nodejs \
	&& apt-get install -y libusb-1.0-0-dev \
	&& rm -rf /var/lib/apt/lists/* \
  && mkdir dist \
	&& echo end 


