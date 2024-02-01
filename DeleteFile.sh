#########################################################################
# File Name: DeleteFile.sh
# Author: kewen
# mail: chenkewen2007@foxmail.com
# Created Time: 2022.08.30
#########################################################################
#!/bin/bash

# Start Run
echo "Task Name: Delete PATH=/home/app/vsftp/Ftpfile/DATA_IMG before 5 day file or folder"
echo "RunDate = `date "+%Y-%m-%d %H:%M:%S"`"
echo "Script Running..."
mkdir -p /var/log/Task/DeleteTask/
echo "PrintLogDIR = /var/log/Task/DeleteTask/"`date "+%Y-%m-%d %H:%M:%S"`.log""
find /home/project/radartest_pkl/predict_output/* -mtime +5 > /var/log/Task/DeleteTask/"`date "+%Y-%m-%d%H:%M:%S"`.log"
echo "File Delete Done!"
echo "================================================================================================"
