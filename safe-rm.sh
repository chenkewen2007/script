#!/bin/bash
#Creatuser:chenkewen
#Creatdata:2024/2/1

# 检查是否以root用户运行
if [ "$(whoami)" != "root" ]; then
    echo "这个脚本需要以root权限运行。"
    exit 1
fi

# 1、下载并解压safe-rm
wget https://launchpad.net/safe-rm/trunk/0.13/+download/safe-rm-0.13.tar.gz \
&& tar axf safe-rm-0.13.tar.gz \

# 2、替换系统rm并授予权限
cd safe-rm-0.13 \
&& cp safe-rm /usr/local/bin/rm \
&& chown root:root /usr/local/bin/rm \

# 3、添加环境变量
echo 'PATH=/usr/local/bin:$PATH' >> /etc/profile \
&& source /etc/profile

# 4、创建保护列表
cat <<EOL > /etc/safe-rm.conf
/
/*
/etc
/etc/*
/usr
/usr/local
/usr/local/bin
/usr/local/bin/*
/home
/tmp/safe-rm-test.txt
EOL

# 5、删除下载的safe-rm相关文件，只保留当前脚本命令
cd .. \
&& rm -rf ./safe-rm-*
echo "safe-rm安装完成"
echo "-------------------------------------------------------"

# 6、创建临时文件验证命令是否安装完成
echo "无法删除测试文件：/tmp/safe-rm-test.txt "
echo "safe-rm验证文件，此文件无法删除则证明safe-rm安装完成">/tmp/safe-rm-test.txt

echo "safe-rm禁止删除目录或文件配置路径：/etc/safe-rm.conf"
echo "rm 命令原始路径：/usr/bin/rm,新增safe-rm路径：/usr/local/bin/rm"
