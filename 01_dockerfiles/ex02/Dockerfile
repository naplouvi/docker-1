FROM ruby

RUN apt update
RUN apt install -y nodejs
RUN gem install bundler
RUN gem update bundler
WORKDIR /opt/app

ONBUILD COPY . /opt/app
ONBUILD RUN bundle install