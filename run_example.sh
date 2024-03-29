#!/bin/bash
docker run --rm -d --name steam --shm-size 1024M --network=host -v /run/user/1000/pulse/native:/run/user/1000/pulse/native \
  -e PULSE_SERVER=unix:/run/user/1000/pulse/native \
  --privileged -v steam:/steam steam
