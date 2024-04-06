#!/bin/bash

main() {
    echo "Importing Microsoft keys..."

    sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc

    sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

    echo "Refreshing dependencies"
    dnf check-update

    echo "Instaling Visual Studio Code"
    sudo dnf install code
}

main
