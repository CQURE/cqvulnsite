@echo off
echo [+] Starting lab for lesson %1...
set DAY=%1
docker-compose --profile "day%1" up