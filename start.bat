@ECHO OFF
docker run --rm -it --name iperf3 tbandixen/iperf3:latest
IF ERRORLEVEL 1 PAUSE
