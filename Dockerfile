FROM debian:latest

ENV DIR /usr/src/font-fabulous
ENV DEP g++ ruby-dev make

RUN apt-get update && \
    apt-get -y install fontforge ruby woff-tools $DEP && \
    gem install --no-document fontcustom -v 1.3.8 && \
    apt-get -y autoremove $DEP

WORKDIR $DIR

ADD templates $DIR/templates
ADD fontcustom.yml $DIR
ADD assets $DIR/assets
ADD .fontcustom* $DIR/
