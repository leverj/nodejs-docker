FROM ubuntu:trusty
RUN echo start \
	&& apt-get update \
	&& apt-get install -y build-essential curl python \
	&& curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash - \
	&& apt-get update \
	&& apt-get install -y nodejs \
	&& rm -rf /var/lib/apt/lists/* \
    && mkdir src \
	&& echo end 


