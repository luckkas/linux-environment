#!/bin/bash

main() {
    ## Add the docker repository
    sudo dnf -y install dnf-plugins-core
    sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo

    ## Install docker dependencies
    sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

    ## Start docker with systemctl
    sudo systemctl start docker

    ## Remove the requirement of sudo from docker command (needs reboot or logout)
    sudo groupadd docker
    sudo usermod -aG docker $USER
}

main

