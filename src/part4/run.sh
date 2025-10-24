#!/bin/bash

service nginx start
gcc server.c -o serv -lfcgi
spawn-fcgi -p 8080 -n serv
nginx -s reload
tail -f /dev/null
