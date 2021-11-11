# Stardog using Docker

## The Stack

This stack is made up of two services:

- Stardog, with the Oracle (`oracle.jdbc.driver.OracleDriver`) JDBC driver support.
- Stardog Studio, to help starting to play with Stardog.

## Stardog

Get a Stardog licence here: https://www.stardog.com/get-started/

It will be sent by email.

Download the license file and put it in the `volumes/stardog` directory.

## Run the stack

Run the docker-compose stack using this command:

```sh
docker-compose up --build
```

## Open Stardog Studio

Go to http://localhost:5821.

Add a new connection with following informations:

- Username: `admin`
- Password: `admin`
- Endpoint: `http://127.0.0.1:5820`

You should be able to create a database, users, … and play with them.
