#########################################################################
# File Name: DeleteFile.sh
# Author: kewen
# mail: chenkewen2007@foxmail.com
# Created Time: 2022.08.30
#########################################################################
#!/bin/bash

# 设置要删除的文件路径
deletefilepath1="/home/app/vsftp/Ftpfile/DATA_IMG"

# 设置日志路径
deleteTaskLog="/var/log/Task/DeleteTask"

# 开始运行脚本
echo "Task Name: Delete PATH=$deletefilepath1 before 5 day file or folder" # 打印任务名称和删除路径
echo "RunDate = `date "+%Y-%m-%d %H:%M:%S"`" # 打印当前运行脚本的日期和时间
echo "Script Running..." # 打印脚本正在运行的消息

# 创建日志目录，如果目录不存在的话
mkdir -p "$deleteTaskLog"

# 打印日志文件的路径
echo "PrintLogDIR = $deleteTaskLog/`date "+%Y-%m-%d %H:%M:%S"`.log"

# 找到在过去5天内未修改的文件，并将文件列表输出到日志文件中
find "$deletefilepath1"/* -mtime +5 > "$deleteTaskLog/`date "+%Y-%m-%d%H:%M:%S"`.log"

# 删除在过去5天内未修改的文件
find "$deletefilepath1"/* -mtime +5 -exec rm {} \;

echo "File Delete Done!" # 打印文件删除成功的消息
