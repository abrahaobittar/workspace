dnf group info base-x
dnf install @base-x
dnf install @xfce-desktop
systemctl enable lightdm.service
systemctl enable graphical.target
systemctl set-default graphical.target