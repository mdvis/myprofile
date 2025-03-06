# ------
# name: setup-common.sh
# author: Deve
# date: 2025-03-06
# ------

# flathub
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install flathub \
    com.jgraph.drawio.desktop com.tencent.WeChat com.visualstudio.code \
    io.dbeaver.DBeaverCommunity io.github.alainm23.planify \
    io.gitlab.news_flash.NewsFlash md.obsidian.Obsidian net.agalwood.Motrix \
    net.hovancik.Stretchly org.cryptomator.Cryptomator org.freac.freac \
    org.freecad.FreeCAD org.freefilesync.FreeFileSync org.freeplane.App \
    org.gnome.gitlab.somas.Apostrophe org.localsend.localsend_app \
    org.wezfurlong.wezterm

if [ "$ARCH" = "$AMD64" ]; then
    flatpak install flathub \
        com.google.Chrome com.usebottles.bottles com.mongodb.Compass \
        com.wps.Office
fi

# snapcraft
sudo ln -sf /var/lib/snapd/snap /snap

sudo snap install scrcpy ghostty yazi

if [ "$ARCH" = "$AMD64" ]; then
    sudo snap install another-redis-desktop-manager simplescreenrecorder \
        logisim-evolution
fi

# keyviz
# mkcert
