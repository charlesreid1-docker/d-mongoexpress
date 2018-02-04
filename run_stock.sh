#!/bin/bash
#
# don't touch the --link line.

debug=false
#debug=true

docker ps -qa | xargs docker rm

if [ "$debug" == true ]; then

    docker run \
        --name mex \
        -p 8081:8081 \
        --link happy_mongo:mongo \
        -e ME_CONFIG_OPTIONS_EDITORTHEME="ambiance" \
        -e ME_CONFIG_BASICAUTH_USERNAME="wifi" \
        -e ME_CONFIG_BASICAUTH_PASSWORD="dummy" \
        -ti mongo-express \
        /bin/bash

        #-e ME_CONFIG_MONGODB_URL="10.6.0.1" \
        #-e ME_CONFIG_MONGODB_PORT="27017" \

else

    docker run \
        --name mex \
        -p 8081:8081 \
        --link happy_mongo:mongo \
        -e ME_CONFIG_OPTIONS_EDITORTHEME="ambiance" \
        -e ME_CONFIG_BASICAUTH_USERNAME="wifi" \
        -e ME_CONFIG_BASICAUTH_PASSWORD="dummy" \
        -d \
        -ti mongo-express 

fi

