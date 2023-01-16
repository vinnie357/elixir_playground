#!/bin/bash
function localpostgresdocker {
printf "%s\n" "${POSTGRES_USER:?You must set POSTGRES_USER}"
printf "%s\n" "${POSTGRES_PASSWORD:?You must set POSTGRES_PASSWORD}"
printf "%s\n" "${POSTGRES_DB:?You must set POSTGRES_DB}"
docker run \
    --name postgres \
    -p 5432:5432 \
    -e POSTGRES_USER=$POSTGRES_USER \
    -e POSTGRES_PASSWORD=$POSTGRES_PASSWORD \
    -e POSTGRES_DB=$POSTGRES_DB \
    -d \
    postgres
# optional persist data
#-v ./postgres-data:/var/lib/postgresql/data \
}
