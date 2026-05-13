# DevOps Assignment

## Overview

This project demonstrates:

- Infrastructure provisioning using Terraform
- Configuration management using Ansible
- Docker Swarm cluster setup
- Overlay networking
- Consul service discovery
- Docker daemon security

---

## Architecture

Node A:
- Docker Swarm Manager
- Consul Server
- nginx container

Node B:
- Docker Swarm Worker
- Consul Client
- alpine container

---

## Features

- Secure Docker setup
- Multi-node communication
- Overlay network
- DNS-based service discovery
- Infrastructure as Code

---

## Setup Instructions

### Terraform

```bash
terraform init
terraform apply

##Ansible
ansible-playbook -i inventory.ini docker-install.yml
ansible-playbook -i inventory.ini swarm-init.yml
ansible-playbook -i inventory.ini swarm-join.yml
ansible-playbook -i inventory.ini overlay-network.yml
ansible-playbook -i inventory.ini consul-install.yml

Deploy Containers
docker stack deploy -c docker-compose.yml myapp

Validation

Check Swarm Nodes
docker node ls

Check Overlay Network
docker network ls

Verify Service Discovery


Security Measures
UFW firewall enabled
Docker daemon secured
SSH key authentication
Overlay network isolation
Least privilege access


COMMANDS TO EXECUTE

Step 1
terraform init
terraform apply

Step 2
ansible-playbook -i inventory.ini docker-install.yml

Step 3
ansible-playbook -i inventory.ini swarm-init.yml

Step 4
ansible-playbook -i inventory.ini swarm-join.yml

Step 5
ansible-playbook -i inventory.ini overlay-network.yml

Step 6
docker stack deploy -c docker-compose.yml myapp

Step 7
curl nginx.service.consul
SCREENSHOTS TO CAPTURE
Terraform Apply Success
Docker Installed
Docker Swarm Nodes
Overlay Network
Running Containers
Consul UI
curl nginx.service.consul Output
Docker Services
