# Use the barebones version of Ruby 2.2.3.
FROM ruby:2.5

RUN apt-get update -qq -y && apt install apt-utils -qq -y
RUN apt-get install -qq -y
RUN apt-get install -y build-essential nodejs sqlite3 libsqlite3-dev

ENV INSTALL_PATH /playbook-centeias
RUN mkdir -p $INSTALL_PATH

COPY . .
RUN bundle install
RUN rails db:create
RUN rails db:migrate
RUN rails db:seed

# ENTRYPOINT rails server
CMD ["rails", "server"]