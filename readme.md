## create docker machine
~~~~
docker-machine create --driver virtualbox default
eval $(docker-machine env)
docker-machine ls
~~~~

#docker-machine stop default
~~~~
docker-machine start default
~~~~

## this is only necessary if your company is using a different SSL CA 
~~~~
docker-machine ssh default 'sudo mkdir /var/lib/boot2docker/certs'
docker-machine scp ca.pem default:
docker-machine ssh default 'sudo mv ca.pem /var/lib/boot2docker/certs/'
docker-machine restart default 
~~~~

## remove docker machine
~~~~
docker-machine rm default
eval $(docker-machine env -u)
~~~~

## List Docker CLI commands
~~~~
docker
docker container --help
~~~~

## Display Docker version and info
~~~~
docker --version
docker version
docker info
~~~~

## Execute Docker image
~~~~
docker run hello-world
~~~~

## List Docker images
~~~~
docker image ls
~~~~

## List Docker containers (running, all, all in quiet mode)
~~~~
docker container ls
docker container ls --all
docker container ls -aq
~~~~
