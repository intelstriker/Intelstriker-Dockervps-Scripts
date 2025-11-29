apt update
apt install -y sudo neofetch wget
wget https://github.com/fastfetch-cli/fastfetch/releases/download/2.49.0/fastfetch-linux-amd64.deb && mv fastfetch-linux-amd64.deb fastfetch.deb && apt install ./fastfetch.deb
echo "Finshed setup script"
