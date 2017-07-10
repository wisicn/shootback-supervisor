[![](https://images.microbadger.com/badges/version/wisicn/shootback-supervisor.svg)](https://microbadger.com/images/wisicn/shootback-supervisor "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/wisicn/shootback-supervisor.svg)](https://microbadger.com/images/wisicn/shootback-supervisor "Get your own image badge on microbadger.com")
## Credit
This docker file is created from [aploium / shootback](https://github.com/aploium/shootback) and [gliderlabs/docker-alpine](https://github.com/gliderlabs/docker-alpine). Thanks the authors of shootback and gliderlabs/docker-alpine.
## Introduction
This is a Dockerfile to build a container image for Shootback and Supervisor. The shootback server can run under the control of Supervisor.

And this Docker image is based on gliderlabs/docker-alpine, so the size of the image is super small, only 56MB.
### Git repository
The source files for this project can be found here: [https://github.com/wisicn/shootback-supervisor](https://github.com/wisicn/shootback-supervisor)

If you have any improvements please submit a pull request.
### Docker hub repository
The Docker hub build can be found here: [https://hub.docker.com/r/wisicn/shootback-supervisor/](https://hub.docker.com/r/wisicn/shootback-supervisor/)
## Versions
| Tag | shootback | Supervisor | alpine |
|-----|-------|-----|--------|
| latest | master | 3.2.0 | 3.6 |


## Building from source
To build from source you need to clone the git repo and run docker build:
```
git clone https://github.com/wisicn/shootback-supervisor
docker build -t shootback-supervisor:latest .
```

## Pulling from Docker Hub
Pull the image from docker hub rather than downloading the git repo. This prevents you having to build the image on every docker host:
```
docker pull wisicn/shootback-supervisor:latest
```

## Running
To simply run the container:

```
sudo docker run --name myshootback -d --restart=always -v /your/path/to/shootback_config_director/:/etc/supervisor.d/ -p 10022:10022 -p 10023:10023  wisicn/shootback-supervisor
```

You can change the -p ```<your Port>:10022``` and  -p ```<your Port>:10023``` to override the shootback service listening port.

### Volumes and Config file
The config file for shootback and Supervisor are located in /etc/supervisor.d/ .

So you must link your  shootback and Supervisore directory on the docker host to the container via  -v /your/path/to/shootback_supervisor_config_director/:/etc/supervisor.d/

You can see the config files example under the data/ directory in the repository.
