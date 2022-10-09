#! /bin/sh

bundle install
if [ "$RAILS_ENV" == "production" ] && [ ! -f /app/db/production.sqlite3 ]; then
    rails db:create
elif [ "$RAILS_ENV" == "test" ] && [ ! -f /app/db/test.sqlite3 ]; then
    rails db:create
fi
rails db:migrate
rails server -b 0.0.0.0
