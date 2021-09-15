FROM ruby:2.7-bullseye

WORKDIR /usr/src/app/

COPY src/ /usr/src/app/

# RUN apk add --no-cache bash
# RUN /bin/sh
# RUN apk update && apk add --virtual build-dependencies build-base
# RUN gem install bundler

RUN bundle install

EXPOSE 8081

CMD ["ruby", "details.rb", "8081"]