#!/bin/sh
echo [+] Starting lab for lesson $1...
DAY=$1 docker-compose --profile "day$1" up