#OwnCloud Development Environment

Owncloud development using Docker. Uses ocdev to setup the application source in src folder. Serves the development environment 
using a docker apache image.

## Prerequisites

- Docker (Docker toolbox & VirtualBox on Mac)
- Make

## Instructions

1. make docker_setup
2. make docker_run
3. visit the ip of the docker image (typically http://192.168.99.100:8080)

optionally update your hosts file / custom dns etc to map the IP to a local domain
