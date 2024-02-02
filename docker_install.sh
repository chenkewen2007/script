#createuser:kewen

#!/bin/bash
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

# 手动安装Docker步骤可以参考Docker官方教程：

#CentOS：https://docs.docker.com/engine/install/centos/
#Debian：https://docs.docker.com/engine/install/debian/
#Fedora：https://docs.docker.com/engine/install/fedora/
#Ubuntu：https://docs.docker.com/engine/install/ubuntu/

# 更换为阿里云源进行加速
cat > /etc/docker/daemon.json << EOF
{
 "registry-mirrors": ["https://b9pmyelo.mirror.aliyuncs.com"]
}
EOF

systemctl daemon-reload

systemctl restart docker

#需要更换其他源请参考以下链接

#网易镜像加速：

#http://hub-mirror.c.163.com

#中国科技大学镜像加速：

#https://docker.mirrors.ustc.edu.cn

#腾讯云镜像加速：

#https://mirror.ccs.tencentyun.com
