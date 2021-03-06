#!/bin/bash -xe
#Script to install coreos on macmini
apt-get install curl gawk
curl --remote-name https://raw.githubusercontent.com/coreos/init/master/bin/coreos-install
chmod u+x coreos-install

curl --remote-name https://raw.githubusercontent.com/gilgameshskytrooper/coreos-bootstrap/master/worker.yml

#./coreos-install -d /dev/sda -c cloud-config.yml -C stable
./coreos-install -d /dev/sda -c worker.yml

rm -rf coreos-install worker.yml
