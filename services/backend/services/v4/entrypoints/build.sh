#!/bin/sh
mkdir -p /home/node/app/dist
npm run build
chown -R node:node /home/node/app/dist
