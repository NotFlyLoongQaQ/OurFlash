@echo off
rem OurFlash Setup
color 3e
rem ______________
goto main
:hr
echo ——————————————
:main
title OurFlash Setup
color 3e
cls
echo 请使用国外ip代理继续运行脚本，代理启动后，按下任意键继续。
pause
wget https://fpdownload.macromedia.com/pub/flashplayer/latest/help/install_flash_player_ax.exe
wget https://fpdownload.macromedia.com/get/flashplayer/latest/help/install_flash_player_ppapi.exe
wget https://dyiyang.jb51.net/201305/tools/flashplayer_jb51net.rar
start flashplayer_jb51net.rar
echo 请手动解压flashplayer压缩包，解压后请按回车键。
pause
copy flashplayer_29_sa.exe flashplayer.exe
copy flashplayer.exe C:\windows
copy flashplayer.exe C:\windows\system32
del flashplayer.exe
copy flashplayer_29_sa.exe C:\windows
copy flashplayer_29_sa.exe C:\windows\system32
ping 127.0.0.1>nul & rem 延时防止奇奇怪怪的bug
call install_flash_player_ax.exe
call install_flash_player_ppapi.exe
echo over>c:\windows\OurFlash.log
del install_flash_player_ax.exe
del install_flash_player_ppapi.exe
color
cls
echo OurFlash Setup 运行完成.
pause
del setup.bat
cls
echo 您想留下OurFlash 安装完成flag吗？
echo 如果想，请直接关闭该脚本，如果不想，按下回车键。
echo.
pause>nul
del c:\windows\OurFlash.log
exit
