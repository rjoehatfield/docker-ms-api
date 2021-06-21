docker-ms-api
======

Demo Rails API microservice.  This API is set-up to run in a docker contaier which installs Ruby, Rails, Sqlite3 and integrates Swagger to document the API.

The demo shows the following simple scenarios:
* GET /test endpoint to return static JSON
* POST /test endpoint to return dynamic JSON
* GET /check endpoint to orchestrate http service call with a remote microservice
* CRUD resource for Users entity which exposes GET /users, GET /users/{user-id}, POST /users, PUT /users/{user-id} and DELETE /users/{user-id} operations

**Get Docker**

    https://docs.docker.com/get-docker/

**Clone repo**

    git clone https://github.com/robjonesjr/docker-ms-api

**cd into docker-ms-api directory**

    cd docker-ms-api

**Build docker container**

    docker-compose build --no-cache

**Run ms-api**

    docker-compose up

**Load ms-api Swagger**

    http://localhost:3000/api-docs


