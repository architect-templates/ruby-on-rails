# syntax=docker/dockerfile:1
FROM ruby:3.0.0
RUN apt-get update && apt-get install -y nodejs

WORKDIR /myapp

COPY Gemfile* .
RUN bundle install

COPY . .

RUN rails assets:precompile

EXPOSE 3000

ENTRYPOINT ["./entrypoint.sh"]
CMD ["rails", "server", "-b", "0.0.0.0"]
