#!/bin/bash

docker run \
	-it --rm \
	-p 8081:8081 \
	--link inspiring_boyd:mongo \
	-e ME_CONFIG_OPTIONS_EDITORTHEME="ambiance" \
	-e ME_CONFIG_MONGODB_ENABLE_ADMIN="true" \
	-e ME_CONFIG_MONGODB_ADMINUSERNAME="mongo" \
	-e ME_CONFIG_MONGODB_ADMINPASSWORD="l6o4nzOx3WwG5JA1" \
	-e ME_CONFIG_BASICAUTH_USERNAME="wifi" \
	-e ME_CONFIG_BASICAUTH_PASSWORD="wifi" \
	-d \
	mongo-express

