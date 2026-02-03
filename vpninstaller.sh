apt update && apt install -y wireguard iproute2 iptables curl && umask 077 && [ ! -f /etc/wireguard/server_private.key ] && wg genkey | tee /etc/wireguard/server_private.key | wg pubkey > /etc/wireguard/server_public.key; clear; SERVER_PUB=$(cat /etc/wireguard/server_public.key); SERVER_IP=$(curl -s ifconfig.me); CLIENT_PRIV=$(wg genkey); CLIENT_PUB=$(echo "$CLIENT_PRIV" | wg pubkey); cat <<EOF
[Interface]
PrivateKey = $CLIENT_PRIV
Address = 10.0.0.2/24
DNS = 1.1.1.1

[Peer]
PublicKey = $SERVER_PUB
Endpoint = $SERVER_IP:51820
AllowedIPs = 0.0.0.0/0
PersistentKeepalive = 25
EOF
