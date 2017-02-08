FROM alpine:edge
RUN echo start \
	&& apk update \
	&& apk add nodejs \
  && mkdir dist \
	&& echo end 


