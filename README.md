----------------------------------------
### Description
This is an all-in-one [Sonarr](https://sonarr.tv/) stack for easy TV Series retrieval.

It uses the following docker images from [linuxserver.io](http://tools.linuxserver.io/dockers):

* linuxserver/deluge        - download client
* linuxserver/sonarr        - TV Series manager
* linuxserver/radarr        - Movies manager
* linuxserver/jackett       - Sonarr indexer proxy server

It is preconfigured and ready to go and includes [EZTV](https://eztv.ag/) and [The Pirate Bay](http://thepiratebay.se/) but more trackers can be added via Jackett if needed.

Each component can be accessed using the following URLs:

* Sonarr:    https://dockerhost/sonarr
* Radarr     https://dockerhost/radarr
* Deluge:    http://dockerhost/deluge (password: deluge)

----------------------------------------
### Running

#### Install Docker and docker-compose using the official install instructions.

* [Docker](https://docs.docker.com/engine/installation/)
* [docker-compose](https://docs.docker.com/compose/install/)

#### Clone this repository:
 ```git clone https://github.com/yourmomsmom/notapirate.git /path/to/stack/root```

 The ```/path/to/stack/root``` directory needs to have sufficient disk space, as it will also store all downloaded files.

#### Setup permissions

The entire stack runs under a single user which needs to be configured in the `setup.sh` script.

Running the setup script will create the user and set the required permissions.

```./setup.sh```

#### Start the containers

In the stack root dir run:

```docker-compose up -d```

The stack should be up in a couple of minutes, depending on the docker image download speed

Downloaded TV Series can be found in the ```data/tv``` directory, it's up to you to export it to your HTPC/Media Center :)

Enjoy!
