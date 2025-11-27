apt install sudo
apt install curl
apt install screen
curl -fsSL https://code-server.dev/install.sh | sh
sed -i 's/^password:.*/password: IntelstrikerDockervpsbot/' /root/.config/code-server/config.yaml
screen -dmS codeserver bash -c "code-server"
