  m#!/bin/bash

command_exists() {
    command -v "$1" >/dev/null 2>&1
}

install_dnf_programs() {
    echo "Installing programs using DNF..."
    sudo dnf install -y "$@"
}

main() {
    if ! command_exists dnf; then
        echo "DNF is not installed. Please install DNF and try again."
        exit 1
    fi

    programs=(
        btrfs-assistant
        deja-dup
    )

    install_dnf_programs "${programs[@]}"
}

# Run the main function
main
