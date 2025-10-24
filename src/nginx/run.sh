#!/bin/bash

service nginx start
nginx -s reload
tail -f /dev/null
nginx -g "daemon off;"

