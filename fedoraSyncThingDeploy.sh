#Tested on Fedora, downloaded syncthing from default repo
sudo dnf install syncthing

#setting up service on user account
#script download https://github.com/syncthing/syncthing/blob/master/etc/linux-systemd/user/syncthing.service

#Copy service file
sudo cp syncthing.service /etc/systemd/system/syncthing.service

#interestingly running this as user and not sudo or su worked; maybe look into why the difference
#source https://docs.syncthing.net/users/autostart.html#linux
systemctl --user enable syncthing.service
systemctl --user start syncthing.service

#confirm service is running; using the syntax for a user service from
#source https://docs.syncthing.net/users/autostart.html#linux
systemctl --user status syncthing.service
