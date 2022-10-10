#! /bin/sh

#bundle install
if [ "$RAILS_ENV" == "production" ]; then
    if [ ! -f /app/db/production.sqlite3 ]; then
        rails db:create
    fi
elif [ "$RAILS_ENV" == "test" ]; then
    if [ ! -f /app/db/test.sqlite3 ]; then
        rails db:create
    fi
fi
rails db:migrate
rails server -b 0.0.0.0