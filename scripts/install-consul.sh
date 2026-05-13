#!/bin/bash

wget https://releases.hashicorp.com/consul/1.18.1/consul_1.18.1_linux_amd64.zip
unzip consul_1.18.1_linux_amd64.zip
sudo mv consul /usr/local/bin/