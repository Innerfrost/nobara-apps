#! /bin/bash

# Apps installation for Nobara
echo "🔔 Starting installation..."

# 2. Adding COPR-repo for Razer
echo "🔌 Adding repo for Razer"
sudo dnf install kernel-devel -y
sudo dnf config-manager addrepo --from-repofile=https://openrazer.github.io/hardware:razer.repo
echo ""
# 3. Installing Razer components
echo "🎨 Installing OpenRazer и Polychromatic..."
sudo dnf install openrazer-meta polychromatic
echo ""
# 4. DNF apps
echo "📦 Installing main apps"
sudo dnf install -y \
    steam heroic-games-launcher lutris mangohud goverlay gamemode \
    telegram-desktop discord google-chrome-stable qbittorrent \
    htop btop nvtop kitty fish p7zip p7zip-plugins unrar \
    gnome-disk-utility timeshift gimp krita vlc obs-studio \
    kdenlive inkscape antimicrox openrgb java-21-openjdk blender
echo ""
# 5. Installing Flatpak
echo "📦 Installing Flatpak"
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install -y flathub \
    org.onlyoffice.desktopeditors \
    md.obsidian.Obsidian \
    com.github.clash-verge-rev.clash-verge-rev \
    com.usebottles.bottles \
    org.prismlauncher.PrismLauncher
echo ""
# 6. Enable gamemoded
echo "🎮 Enable gamemoded"
sudo systemctl enable --now gamemoded
echo ""
# 7. Finishing
echo ""
echo "✅ All done!"
echo "❗ Reboot your computer"
