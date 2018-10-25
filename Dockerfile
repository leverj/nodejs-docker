FROM ubuntu:xenial
RUN echo start \
	&& apt-get update \
	&& apt-get install -y build-essential curl python \
	&& curl -sL https://deb.nodesource.com/setup_10.x | bash - \
	&& apt-get update \
	&& apt-get install -y nodejs \
	&& npm install -g yarn \
	&& apt-get install -y libusb-1.0-0-dev \
	&& apt-get remove -y curl python \
	&& rm -rf /var/lib/apt/lists/* \
  && mkdir dist \
	&& echo end 


