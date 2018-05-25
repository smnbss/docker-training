
cp ca.crt /Users/simone.basso/.docker/machine/machines/default/ca.crt
docker-machine scp certfile default:ca.crt
docker-machine ssh default
sudo mv ~/ca.crt /etc/docker/certs.d/hostname/ca.crt