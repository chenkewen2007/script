@echo off
rem createuser��chenkewen
rem creatdata:2024/2/2

title VmwareStart_Script

:menu
cls


echo 1. ����������е������
echo 2. ���� Ubuntu 64 λ
echo 3. �ر� Ubuntu 64 λ
echo 4. ���� CentOS 7.9 64 λ
echo 5. �ر� CentOS 7.9 64 λ
echo 6. �˳�

set /p choice=������ѡ��:


if "%choice%"=="2" (
    echo Ubuntu 64 λ������~
	echo ������ip:192.168.3.118
    cd "C:\Program Files (x86)\VMware\VMware Workstation"
    .\vmrun.exe start "D:\Program Files\VMvare\Ubuntu 64 λ\Ubuntu 64 λ.vmx" nogui
    pause
    goto menu
)

if "%choice%"=="3" (
    echo Ubuntu 64 λ���ڹػ���~
    cd "C:\Program Files (x86)\VMware\VMware Workstation"
    .\vmrun.exe stop "D:\Program Files\VMvare\Ubuntu 64 λ\Ubuntu 64 λ.vmx" hard
    pause
    goto menu
)

if "%choice%"=="1" (
    echo �������е�������б�
    cd "C:\Program Files (x86)\VMware\VMware Workstation"
    .\vmrun.exe list
    pause
    goto menu
)

if "%choice%"=="4" (
    echo CentOS 7.9 64 λ������~
   echo ������ip:192.168.3.62
    cd "C:\Program Files (x86)\VMware\VMware Workstation"
    .\vmrun.exe start "D:\Program Files\VMvare\CentOS 7.9 64 λ\CentOS 7 64 λ.vmx" nogui
    pause
    goto menu
)

if "%choice%"=="5" (
    echo CentOS 7.9 64 λ���ڹػ���~
    cd "C:\Program Files (x86)\VMware\VMware Workstation"
    .\vmrun.exe stop "D:\Program Files\VMvare\CentOS 7.9 64 λ\CentOS 7 64 λ.vmx" hard
    pause
    goto menu
)

if "%choice%"=="6" (
    exit
)

echo ��Ч��ѡ�����������
pause
goto menu
