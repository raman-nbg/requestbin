# [RequestBin](http://requestb.in)
## A Runscope community project.

Originally Created by [Jeff Lindsay](http://progrium.com)

License
-------
MIT


Looking to self-host?
=====================

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

## Deploy your own instance using Heroku
Create a Heroku account if you haven't, then grab the RequestBin source using git:

`$ git clone git://github.com/Runscope/requestbin.git`

From the project directory, create a Heroku application:

`$ heroku create`

Add Heroku's redis addon:

`$ heroku addons:add heroku-redis`

Set an environment variable to indicate production:

`$ heroku config:set REALM=prod`

Now just deploy via git:

`$ git push heroku master`

It will push to Heroku and give you a URL that your own private RequestBin will be running.

## Deploy your own instance using a pre-built Docker image

### 1. Single RequestBin container with in-memory storage

Note: you will lose request data when the container stops (i.e. stop, restart, crash).

```bash
docker run --rm -it -p 8000:8000 weshigbee/requestbin
```

### 2. RequestBin + redis with docker-compose

See https://github.com/g0t4/requestbin/blob/master/docker-compose.prebuilt-weshigbee-requestbin.yml#L1-L14

TODO - setup a runscope/requestbin image

## Deploy your own instance using Docker

On the server/machine you want to host this, you'll first need a machine with
docker and docker-compose installed, then grab the RequestBin source using git:

`$ git clone git://github.com/Runscope/requestbin.git`

Go into the project directory and then build and start the containers

```
$ sudo docker-compose build
$ sudo docker-compose up -d
```

Your own private RequestBin will be running on this server.


Contributors
------------
 * Barry Carlyon <barry@barrycarlyon.co.uk>
 * Jeff Lindsay <progrium@gmail.com>
