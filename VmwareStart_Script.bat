@echo off
rem createuser：chenkewen
rem creatdata:2024/2/2

title VmwareStart_Script

:menu
cls


echo 1. 检测正在运行的虚拟机
echo 2. 启动 Ubuntu 64 位
echo 3. 关闭 Ubuntu 64 位
echo 4. 启动 CentOS 7.9 64 位
echo 5. 关闭 CentOS 7.9 64 位
echo 6. 退出

set /p choice=请输入选项:


if "%choice%"=="2" (
    echo Ubuntu 64 位启动中~
	echo 服务器ip:192.168.3.118
    cd "C:\Program Files (x86)\VMware\VMware Workstation"
    .\vmrun.exe start "D:\Program Files\VMvare\Ubuntu 64 位\Ubuntu 64 位.vmx" nogui
    pause
    goto menu
)

if "%choice%"=="3" (
    echo Ubuntu 64 位正在关机中~
    cd "C:\Program Files (x86)\VMware\VMware Workstation"
    .\vmrun.exe stop "D:\Program Files\VMvare\Ubuntu 64 位\Ubuntu 64 位.vmx" hard
    pause
    goto menu
)

if "%choice%"=="1" (
    echo 正在运行的虚拟机列表：
    cd "C:\Program Files (x86)\VMware\VMware Workstation"
    .\vmrun.exe list
    pause
    goto menu
)

if "%choice%"=="4" (
    echo CentOS 7.9 64 位启动中~
   echo 服务器ip:192.168.3.62
    cd "C:\Program Files (x86)\VMware\VMware Workstation"
    .\vmrun.exe start "D:\Program Files\VMvare\CentOS 7.9 64 位\CentOS 7 64 位.vmx" nogui
    pause
    goto menu
)

if "%choice%"=="5" (
    echo CentOS 7.9 64 位正在关机中~
    cd "C:\Program Files (x86)\VMware\VMware Workstation"
    .\vmrun.exe stop "D:\Program Files\VMvare\CentOS 7.9 64 位\CentOS 7 64 位.vmx" hard
    pause
    goto menu
)

if "%choice%"=="6" (
    exit
)

echo 无效的选项，请重新输入
pause
goto menu
