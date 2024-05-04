
#########################################################################
# File Name: docker-compose_install.sh
# Createuser: kewen
# mail: chenkewen2007@foxmail.com
#########################################################################
#!/bin/bash
# 检查是否以root用户运行
if [ "$(whoami)" != "root" ]; then
    echo "这个脚本需要以root权限运行。"
    exit 1
fi


sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose &&
sudo chmod +x /usr/local/bin/docker-compose &&
 docker-compose --versio
