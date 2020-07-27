#!/bin/sh
set -e

envsubst '\$PORT' < /etc/nginx/default.conf.template > /etc/nginx/conf.d/default.conf
