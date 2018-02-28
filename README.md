# d-mongoexpress

This repo contains scripts for building and running the Mongo Express web app
for administering MongoDB database.

## Running mongo express

The `run_stock.sh` script is the only script. It runs a stock mongo-express container
from Docker's official images.

## Instructions 

To run and install:

```
docker pull mongo-express

./run_stock.sh
```

More info [here](https://hub.docker.com/_/mongo-express/).

[Here](https://store.docker.com/images/e89a86ce-9988-4ee1-ada9-228925730018?tab=description)
is ink to mongo-express image on Docker store.

Delete database functionality does not seem to work.

## Linking mongo and mongo express

If you are using the d-mongodb repo from git.charlesreid1.com,
you can link the two containers and give Mongo Express admin access
by setting some environmental variables.

To get the mongodb admin username and password, use docker logs and 
give it the name of the mongodb container:

```
docker logs leaping_spiderman
```

Copy and paste the admin username and password into the 
`run_stock.sh` script.

