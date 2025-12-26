sudo killall apt apt-get
sudo killall dpkg
sudo rm -f /var/lib/dpkg/lock-frontend
sudo rm -f /var/cache/apt/archives/lock

apt install curl -y
apt install sudo -y
apt-get update && apt-get install -y expect

curl -s https://packagecloud.io/install/repositories/pufferpanel/pufferpanel/script.deb.sh | sudo bash
sudo apt-get install pufferpanel
sudo pufferpanel user add --email inteldockerbot@gmail.com --name inteldockerbot --password inteldockerbot --admin
sudo systemctl enable --now pufferpanel
