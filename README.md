# Wiki Toxicity Database
This repository contains a reusable PostgreSQL database using Docker Compose and Wikipedia's detox project data 

To connect via psql CLI - run `psql dbname=toxicity host=localhost user=docker password=docker port=5432 sslmore=prefer`

## Running locally

From the same directory as this README, run `docker compose up` to obtain an instance of this database. 

## Flyway

We're leveraging Flyway command line via a docker image to migrate our base postgres instance to our desired state. You can read more on Flyway [here][flyway]. More specifics about the Flyway docker image can be found [here][flyway-docker].

## PgAdmin

We are leveraging containerized PgAdmin as a browser-hosted UI tool for managing our Postgres database. The official documentation can be found [here][pgadmin]. 

### Servers File

We're overriding the default servers file through volume mapping a json file in our [docker-compose.yml](docker-compose.yml). More information can be found on this process [here][pgadmin-json].

[flyway]: https://flywaydb.org/documentation/
[flyway-docker]: https://github.com/flyway/flyway-docker
[pgadmin]: https://www.pgadmin.org/docs/
[pgadmin-json]: https://www.pgadmin.org/docs/pgadmin4/development/import_export_servers.html
