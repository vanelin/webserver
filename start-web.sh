#!/bin/bash
while true; do echo -e "HTTP/1.1 200 OK\r\n\r\n<h1>$(hostname) is live</h1>$(date)" | nc -vl -p 8000 -q 1; done
