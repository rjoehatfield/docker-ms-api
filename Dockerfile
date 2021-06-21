# Dockerfile development version
FROM ruby:2.7.3 AS ms-api

ARG USER_ID
ARG GROUP_ID

RUN addgroup --gid $GROUP_ID user
RUN adduser --disabled-password --gecos '' --uid $USER_ID --gid $GROUP_ID user

ENV INSTALL_PATH /opt/app
RUN mkdir -p $INSTALL_PATH

RUN apt-get update && apt-get install -y sqlite3 libsqlite3-dev

WORKDIR $INSTALL_PATH
COPY ms-api/ .
RUN gem install rails bundler
RUN bundle install
RUN chown -R user:user /opt/app

EXPOSE 3000
EXPOSE 1234

USER $USER_ID
