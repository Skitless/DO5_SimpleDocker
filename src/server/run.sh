#!/bin/bash

gcc server.c -o serv -lfcgi
service nginx start
nginx -s reload
spawn-fcgi -p 8080 -n serv

# tail -f /dev/null
# nginx -g "daemon off;"