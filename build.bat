@echo off
docker build . -t tbandixen/iperf3:latest
IF ERRORLEVEL 1 PAUSE
