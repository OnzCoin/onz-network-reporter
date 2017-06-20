#!/bin/bash
git pull
npm install

NODE_ENV=${NODE_ENV:-'production'} \
RPC_HOST=${RPC_HOST:-'localhost'} \
RPC_PORT=${RPC_PORT:-8000} \
LISTENING_PORT=${LISTENING_PORT:-8000} \
INSTANCE_NAME=$INSTANCE_NAME \
CONTACT_DETAILS=$CONTACT_DETAILS \
NETWORK_MODE=${NETWORK_MODE:-'main'} \
WS_SERVER='ws://liskstats.net:3000' \
WS_SECRET=$WS_SECRET \
IS_FORGING=${IS_FORGING:-'no'} \
VERBOSITY=${VERBOSITY:-2} \
node app.js