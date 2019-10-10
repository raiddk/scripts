#source: https://www.videolan.org/vlc/download-fedora.html
#Operating System: Fedora 30
#misc notes: Looks like su is needed for installing VLC

#pipe in password somehow
su

dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
dnf install vlc
dnf install python-vlc
