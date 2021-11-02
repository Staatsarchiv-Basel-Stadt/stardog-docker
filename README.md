# Stardog using Docker

## Stardog

Get a Stardog licence here: https://www.stardog.com/get-started/

It will be send by email.

Download the license file and put it in the `volumes/stardog` directory.

## Run the stack

Run the docker-compose stack using this command:

```sh
docker-compose up
```

## Open Stardog Studio

Go to https://stardog.studio/

Add a new connection with following informations:

- Username: `admin`
- Password: `admin`
- Endpoint: `http://127.0.0.1:5820`

You should be able to create a database, users, … and play with them.
