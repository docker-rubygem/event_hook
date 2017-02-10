FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.1.1

RUN gem install event_hook --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["event_hook"]
CMD ["--help"]
