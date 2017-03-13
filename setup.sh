#!/bin/bash

USERNAME='notapirate2'

# Add username to system if it doesn't exist
id ${USERNAME} &>/dev/null
if [ $? -ne 0 ]
then
	adduser ${USERNAME}
fi

# Set permissions on the config and data directories

chown -R ${USERNAME}:${USERNAME} ./config
chown -R ${USERNAME}:${USERNAME} ./data

# Create environment file with username UID and GID
PUID=$(id -u ${USERNAME})
PGID=$(id -g ${USERNAME})

echo "PUID=${PUID}" >  .env
echo "PGID=${PGID}" >> .env
