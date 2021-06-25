FROM ruby:2.6.5-alpine

RUN apk add --update build-base

WORKDIR /urs/src/app
COPY Gemfile* ./
RUN bundle install
COPY . .

CMD ["ruby", "cake_day.rb"]