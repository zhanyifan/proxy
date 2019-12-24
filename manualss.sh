#! /bin/bash
yum install python-setuptools && easy_install pip
pip install shadowsocks
filename="/etc/shadowsocks.json"

cat>"${filename}"<<EOF
{
    "server":"0.0.0.0",
    "server_port":12456,
    "local_address":"127.0.0.1",
    "local_port":1080,
    "password":"G2A666",
    "timeout":300,
    "method":"aes-128-cfb",
    "fast_open":false
}
EOF
ssserver -c /etc/shadowsocks.json -d start # 启动
