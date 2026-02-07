mkdir -p /usr/local/bin && cat <<'EOF' > /usr/local/bin/vpn-info
#!/bin/bash
cat <<CONFIG
[Interface]
PrivateKey = eArIX4dNDb0HaSlFVX5ac45f3tuVuFSXAtxHVjLrQ1Q=
Address = 10.0.0.2/24
DNS = 1.1.1.1

[Peer]
PublicKey = lmlLYjy8jVLPr4D/B+S7qM5ar74JoIoNeWfRK09Xk2o=
Endpoint = 194.233.78.54:51820
AllowedIPs = 0.0.0.0/0
PersistentKeepalive = 25
CONFIG
EOF

chmod +x /usr/local/bin/vpn-info && echo "Command vpn-info installed!"
