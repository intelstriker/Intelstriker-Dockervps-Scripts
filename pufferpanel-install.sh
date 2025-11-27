apt install curl -y
apt install sudo -y
apt-get update && apt-get install -y expect

curl -s https://packagecloud.io/install/repositories/pufferpanel/pufferpanel/script.deb.sh | sudo bash
sudo apt-get install pufferpanel
sudo pufferpanel user add --email inteldockerbot@gmail.com --name inteldockerbot --password inteldockerbot --admin
sudo systemctl enable --now pufferpanel
