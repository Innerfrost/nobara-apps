#! /bin/bash

# Apps installation for Nobara
echo "🔔 Starting installation..."

# 2. Adding COPR-repo for Razer
echo "🔌 Adding repo for Razer"
sudo dnf copr enable -y akopyt/razer
echo ""
# 3. Installing Razer components
echo "🎨 Installing OpenRazer и Polychromatic..."
sudo dnf install -y openrazer-meta polychromatic
sudo usermod -a -G plugdev "$USER"
echo ""
# 4. DNF apps
echo "📦 Installing main apps"
sudo dnf install -y \
    steam heroic-games-launcher lutris mangohud goverlay gamemode gamescope steam-devices\
    telegram-desktop discord google-chrome-stable qbittorrent \
    htop btop nvtop kitty fish p7zip p7zip-plugins unrar \
    gnome-disk-utility timeshift gimp krita vlc obs-studio darktable \
    kdenlive inkscape antimicrox openrgb java-21-openjdk blender \
gamescope steam-devices rsync rclone cifs-utils \ hwinfo kvantum qt5-qtstyleplugins qt6-qt5compat \
python3-pip
echo ""
# 5. Installing Flatpak
echo "📦 Installing Flatpak"
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install -y flathub \
    org.onlyoffice.desktopeditors \
    md.obsidian.Obsidian \
    com.github.clash-verge-rev.clash-verge \
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
