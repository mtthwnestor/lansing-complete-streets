# [Lansing Complete Streets](https://www.lansingcompletestreets.org/)

We are working to bring safe, [protected cycling infrastructure](http://www.protectedintersection.com/) to Michigan Avenue and elsewhere in the Greater Lansing area.

* Ruby version: `3.1.2`

* Rails version: `7.0.4`

* Dependencies: 
  * Run `yarn install`
  * Run `bundle install`

* Database creation: Run `rails db:create`

* Database initialization: Run `rails db:migrate`

* Deployment instructions: 
  * Set `POSTGRES_USER` and `POSTGRES_PASSWORD` in the `.env` file
  * Set the master key, either as `RAILS_MASTER_KEY` in the `.env` file or directly in `config/master.key`
  * If using Puma without a web proxy, set `RAILS_SERVE_STATIC_FILES=true` in the `.env` file
  * Build and run in docker via docker-compose: `docker-compose up --build -d`
  * Subsequent runs do not need the `build` parameter: `docker-compose up -d`
