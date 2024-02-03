#########################################################################
# File Name: DeleteFile.sh
# Author: kewen
# mail: chenkewen2007@foxmail.com
# Created Time: 2022.08.30
#########################################################################
#!/bin/bash
# 检查是否以root用户运行
if [ "$(whoami)" != "root" ]; then
    echo "这个脚本需要以root权限运行。"
    exit 1
fi

# 设置要删除的文件路径
deletefilepath1="/home/app/vsftp/Ftpfile/DATA_IMG"

# 设置日志路径
deleteTaskLog="/var/log/Task/DeleteTask"

# 设置find的查询条件
queryCondition='-mtime +5 -name "test[1-9]*.txt"'

# 开始运行脚本
echo "RunDate = `date "+%Y-%m-%d %H:%M:%S"`" # 打印当前运行脚本的日期和时间
echo "Script Running..." # 打印脚本正在运行的消息

# 创建日志目录，如果目录不存在的话
mkdir -p "$deleteTaskLog"

# 打印日志文件的路径
echo "PrintLogDIR = $deleteTaskLog/`date "+%Y-%m-%d %H:%M:%S"`.log"

# 找到在过去5天内未修改的文件，并将文件列表输出到日志文件中
find "$deletefilepath1"/* $queryCondition > "$deleteTaskLog/`date "+%Y-%m-%d-%H:%M:%S"`.log"

# 删除在过去5天内未修改的文件
find "$deletefilepath1"/* $queryCondition -exec rm {} \;

echo "File Delete Done!" # 打印文件删除成功的消息
