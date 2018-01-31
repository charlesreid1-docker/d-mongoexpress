#!/bin/bash
#
# don't touch the --link line.

docker run \
    -it \
    --rm \
    --link happy_mongo:mongo \
    -p 8081:8081 \
    -e ME_CONFIG_OPTIONS_EDITORTHEME="ambiance" \
    -e ME_CONFIG_MONGODB_ENABLE_ADMIN="true" \
    -e ME_CONFIG_MONGODB_ADMINUSERNAME="mongo" \
    -e ME_CONFIG_MONGODB_ADMINPASSWORD="dummy" \
    -e ME_CONFIG_BASICAUTH_USERNAME="wifi" \
    -e ME_CONFIG_BASICAUTH_PASSWORD="dummy" \
    -d \
    mongo-express

