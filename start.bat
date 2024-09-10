@echo off
echo [+] Stoping and removing old lab containers "cqvulnsite-main-*"
for /F "tokens=*" %%i in ('docker ps -q --filter "name=cqvulnsite-main-"') do docker stop %%i
for /F "tokens=*" %%i in ('docker ps -a -q --filter "name=cqvulnsite-main-"') do docker rm %%i
echo [+] Starting lab for lesson %1...
set DAY=%1
docker-compose --profile "day%1" up
