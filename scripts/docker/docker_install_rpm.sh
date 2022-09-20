#Fedora 30 install RPM

wget https://download.docker.com/linux/fedora/29/x86_64/stable/Packages/containerd.io-1.2.5-3.1.fc29.x86_64.rpm
wget https://download.docker.com/linux/fedora/29/x86_64/stable/Packages/docker-ce-18.09.6-3.fc29.x86_64.rpm
wget https://download.docker.com/linux/fedora/29/x86_64/stable/Packages/docker-ce-cli-18.09.6-3.fc29.x86_64.rpm
dnf install *.rpm
sudo usermod -aG docker <user>
sudo systemctl start docker
sudo systemctl enable docker
sudo reboot