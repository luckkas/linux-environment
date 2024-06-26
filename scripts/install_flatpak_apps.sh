#!/bin/bash

command_exists() {
    command -v "$1" >/dev/null 2>&1
}

install_flatpak_apps() {
    echo "Installing Flatpak apps..."
    for app in "${apps[@]}"; do
        flatpak install -y "$app"
    done
}

main() {
    if ! command_exists flatpak; then
        echo "Flatpak is not installed. Please install Flatpak and try again."
        exit 1
    fi

    apps=(
        "io.dbeaver.DBeaverCommunity"
        "com.discordapp.Discord"
        "md.obsidian.Obsidian"
        "net.ankiweb.Anki"
        "com.github.tchx84.Flatseal"
        "com.github.johnfactotum.Foliate"
        "com.stremio.Stremio"
        "org.torproject.torbrowser-launcher"
        "com.valvesoftware.Steam"
        "org.remmina.Remmina"
        "org.qbittorrent.qBittorrent"
        "io.github.aandrew_me.ytdn",
        "org.gnome.Boxes"
    )

    install_flatpak_apps
}

main
