#! /bin/sh

if [ "$RAILS_ENV" == "production" ]; then
    if [ ! -f /app/db/production.sqlite3 ]; then
        sleep 10
        rails db:create
        touch /app/db/production.sqlite3
    fi
elif [ "$RAILS_ENV" == "test" ]; then
    if [ ! -f /app/db/test.sqlite3 ]; then
        rails db:create
    fi
fi
rails db:migrate

rails server -b 0.0.0.0
