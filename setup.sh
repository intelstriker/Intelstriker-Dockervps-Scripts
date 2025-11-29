sudo apt update -y
sudo apt install -y sudo neofetch wget
wget -O fastfetch.deb https://github.com/fastfetch-cli/fastfetch/releases/download/2.49.0/fastfetch-linux-amd64.deb
sudo apt install -y ./fastfetch.deb || sudo apt-get install -f -y
echo "Finished setup script"
