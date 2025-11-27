apt install sudo -y
apt install curl -y 
apt install screen -y
curl -fsSL https://code-server.dev/install.sh | sh
sed -i 's/^password:.*/password: IntelstrikerDockervpsbot/' /root/.config/code-server/config.yaml
screen -dmS codeserver bash -c "code-server"
