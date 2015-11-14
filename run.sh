#!/bin/sh
chown -R nginx:nginx /srv/static
nginx -g daemon off;
