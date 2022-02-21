# Stardog using Docker

## The Stack

This stack is made up of two services:

* Stardog 7.8.2, with Oracle (`oracle.jdbc.driver.OracleDriver`) JDBC driver support.
* Stardog Studio, to help starting to play with Stardog.

## Stardog

* Get a Stardog licence that fits our version here: https://www.stardog.com/get-started/
* It will be sent by email.
* Download the license file and put it in the `~/volumes/stardog-home` directory.

## Run the stack

* Adapt the configurations in the compose file according to your host
* Run the docker-compose stack using the following command:

```sh
docker-compose up --build
```

## Open Stardog Studio

Go to http://localhost:8080

Add a new connection with following informations:

- Username: `admin`
- Password: `admin`
- Endpoint: `http://127.0.0.1:8081`

You should be able to create a database, users, … and play with them.
