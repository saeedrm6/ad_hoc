@echo off
color 2
title                    /github:saeedrm6 : WPA2 PSK Creater\
echo          ������������������������������������ͻ
echo          �   Saeed Rahimi Manesh @3aeed_RM6   �
echo          �       http://RahimiManesh.COM      �
echo          ������������������������������������ͼ
:a
color f1


:start
echo -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
echo                                                   -*
echo 1.Start Ad-Hoc Wireless                           -*
echo 2.Stop Ad-Hoc Wireless                            -*
echo 3.About                                           -*
echo 4.Exit                                            -*
echo.                                                  -*
echo -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*

set /p choice=enter your choice 1,2,3,4:
if %choice%==1 goto start2
if %choice%==2 goto stop
if %choice%==3 goto about
if %choice%==4 goto exit

:start2
set /p ad-hoc-name=Enter your Ad-hoc name (#example : 3aeed_RM6)
set /p ad-hoc-password=Enter your password (password should be 8 Character) (#example : 12345678)
netsh wlan set hostednetwork mode=allow ssid=%ad-hoc-name% key=%ad-hoc-password%
netsh wlan start hostednetwork
echo ad-hoc connection is in range
pause
cls
goto start



:stop
netsh wlan stop hostednetwork
echo ad-hoc connection is not in range
pause
cls
goto start


:about
echo        ������������������������������������ͻ
echo        �     by : Saeed Rahimi Manesh       �
echo        �     GitHub : @saeedrm6             �
echo        �        copyright 2014 - 1393       �
echo        �               Email :              �
echo        �   Rahimimanesh.saeeid@gmail.com    �
echo        ������������������������������������ͼ
pause
cls
goto start


:exit
end