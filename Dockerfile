FROM ruby:3.2
RUN apt-get update -qq && apt-get install -y nodejs npm postgresql-client
WORKDIR /app
COPY . .
RUN bundle install && npm install
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]