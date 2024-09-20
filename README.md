# ghost-deploy

1. Initialize the database with `docker compose run --rm db`.
1. Once it is initialized, exit. Try `ctrl+c`, otherwise, from another terminal, use `docker ps` to find the container and end it with `docker stop container_name`.
1. Change the `url` environment variable to the server's IP address `http://192.168.1.4:2368/` and start the compose file with `docker compose up -d`.
1. Visit the server URL and port with the `ghost` path. E.g., `http://192.168.1.4:2368/ghost`.
1. Create your user account and customize any settings you wish to set up before the site goes public.
1. Change the `url` environment variable back to your final production URL. E.g., `https://www.piperservers.net/`.
1. Restart the compose file with `docker compose down && docker compose up -d`.
