@echo off
:start
color 0a
rem choose an action
cls
echo Welcome to the advanced Program Killer Cmd Center mase by the creator of FA AntiVira
echo.
echo.
echo.
echo Please Choose 1 of the following actions:
echo.
echo.
echo.
echo [Type 1 to spam kill a programm]
echo.
echo [Type 2 to spam aktivate my firewall]
echo. 
echo [Type 3 to list my Prossesses] 
echo.
echo [Type 4 to list my Prossesses and all my conections]
echo.
echo [Type 5 to distroy A File]
echo.
echo [Type 6 to list my Files]
echo.
echo [Type 7 to list my Hardware Info]
echo.
echo [Type 8 to list my System Info]
echo.
echo [Type 9 to list my Network Info]
echo.
echo [Type 10 to all my Sensitive Info]
echo.
echo [Type 11 to Scan for A Damaged System]
echo.
echo [Type 12 to Restart the System]
echo.
echo [Type 13 to Shutdown the System]
echo.
echo [Type 14 to Check and Repair File System Errors]
echo.
echo [Type 15 to Clean Temporary Files]
echo.
echo [Type 16 to Defragment the Hard Drive]
echo.
echo [Type 17 to Run Performance Monitoring and Diagnostics]
echo.
echo INFO Some Actions May Require Administrator
echo.
echo WARNING SOME OF THIS CAN CAUSE THE SYSTEM TO BE DAMAGED
echo.
set /p Actoin=
if /i %Actoin%==1 goto a1
if /i %Actoin%==2 goto a2
if /i %Actoin%==3 goto a3
if /i %Actoin%==4 goto a4
if /i %Actoin%==5 goto a5
if /i %Actoin%==6 goto a6
if /i %Actoin%==7 goto a7
if /i %Actoin%==8 goto a8
if /i %Actoin%==9 goto a9
if /i %Actoin%==10 goto a10
if /i %Actoin%==11 goto a11
if /i %Actoin%==12 goto a12
if /i %Actoin%==13 goto a13
if /i %Actoin%==14 goto a14
if /i %Actoin%==15 goto a15
if /i %Actoin%==16 goto a16
if /i %Actoin%==17 goto a17
rem spam kill a programm
:a1
tasklist
echo what program do you want to kill?
echo WARNING DONT END PROSESSES YOU DONT KNOW BECAUSE THEY COULD BE IMPORTANT
set /p Kill=
goto killloop
:killloop
color 04
taskkill /f /im %Kill%
echo Killed %Kill%
goto killloop

rem spam aktivate the firewall
:a2
color 04
netsh firewall set opmode enable
netsh firewall set opmode mode=ENABLE
netsh advfirewall set currentprofile state on
netsh advfirewall set domainprofile state on
netsh advfirewall set privateprofile state on
netsh advfirewall set publicprofile state on
netsh advfirewall set allprofiles state on
cls
echo Firewall is aktivated
echo to end this close the file window
goto start

rem list all Prossesses
:a3
echo Prozesses:
tasklist
timeout /t 5 >nul
cls
goto a3

rem list all Prossesses and conections
:a4
color 04
echo WARNING THIS PROGRAMM WILL LIST SENSITIVE INORMATION. MAKE SURE NOONE CAN SEE YOUR SCREEN
pause
echo LIST OF CONNECTIONS AND PROSSESSES: > "%USERPROFILE%\Desktop\FAproconectlist.txt"
echo. >> "%USERPROFILE%\Desktop\FAproconectlist.txt"
echo. >> "%USERPROFILE%\Desktop\FAproconectlist.txt"
echo Connections: >> "%USERPROFILE%\Desktop\FAproconectlist.txt"
netstat -o >> "%USERPROFILE%\Desktop\FAproconectlist.txt"
echo. >> "%USERPROFILE%\Desktop\FAproconectlist.txt"
echo. >> "%USERPROFILE%\Desktop\FAproconectlist.txt"
echo Prosesses: >> "%USERPROFILE%\Desktop\FAproconectlist.txt"
tasklist >> "%USERPROFILE%\Desktop\FAproconectlist.txt"
echo. >> "%USERPROFILE%\Desktop\FAproconectlist.txt"
echo. >> "%USERPROFILE%\Desktop\FAproconectlist.txt"
echo Not Responding Prossesses: >> "%USERPROFILE%\Desktop\FAproconectlist.txt"
tasklist /APPS /FI "STATUS EQ NOT RESPONDING" >> "%USERPROFILE%\Desktop\FAproconectlist.txt"
timeout /t 10 >nul
start /wait %USERPROFILE%\Desktop\FAproconectlist.txt
echo Press enter to UPDATE the infomation
pause
del "%USERPROFILE%\Desktop\FAproconectlist.txt"
goto a4

rem Distroy A File
:a5
color 04
set /p filepath="Please Type In The Path Of The File You Want To Kill: "
for /L %%i in (1,1,30000) do (
    echo This File Was Overwritten By FA AntiVira %%i Times > "%filepath%"
)
del /F /Q "%filepath%"
echo File Killed.
echo File Was Permanently Deleted And Overwritten 30000 Times
pause
goto start

rem list a file path
:a6
color 0B
echo please type the file path of the folder you want to list the files in:
set /p filelist=
echo All Files And Folders In %filelist%:
timeout /t 2 >nul
cd %filelist%
timeout /t 3 >nul
echo.
dir /s
echo.
echo.
echo.
echo.
echo Press enter to go back to start
pause
goto start

rem list Hardware Info
:a7
echo WARNING THIS PROGRAMM WILL LIST POSSIBLY SENSITIVE INORMATION. MAKE SURE NOONE CAN SEE YOUR SCREEN
pause
echo HARDWARE INFO: > "%USERPROFILE%\Desktop\FAtemphdwinf.txt"
echo.>> "%USERPROFILE%\Desktop\FAtemphdwinf.txt"
echo.>> "%USERPROFILE%\Desktop\FAtemphdwinf.txt"
echo.>> "%USERPROFILE%\Desktop\FAtemphdwinf.txt"
echo Diskspace:>> "%USERPROFILE%\Desktop\FAtemphdwinf.txt"
echo.>> "%USERPROFILE%\Desktop\FAtemphdwinf.txt"
wmic diskdrive get size>> "%USERPROFILE%\Desktop\FAtemphdwinf.txt"
echo Bytes>> "%USERPROFILE%\Desktop\FAtemphdwinf.txt"
echo.>> "%USERPROFILE%\Desktop\FAtemphdwinf.txt"
echo.>> "%USERPROFILE%\Desktop\FAtemphdwinf.txt"
echo CPU:>> "%USERPROFILE%\Desktop\FAtemphdwinf.txt"
echo.>>"%USERPROFILE%\Desktop\FAtemphdwinf.txt"
wmic cpu get name>> "%USERPROFILE%\Desktop\FAtemphdwinf.txt"
start /wait %USERPROFILE%\Desktop\FAtemphdwinf.txt
echo Press enter to UPDATE the infomation
pause
del "%USERPROFILE%\Desktop\FAtemphdwinf.txt"
goto a7

rem list system Info
:a8
echo WARNING THIS PROGRAMM WILL LIST SENSITIVE INORMATION. MAKE SURE NOONE CAN SEE YOUR SCREEN
pause
echo SYSTEM INFO: > "%USERPROFILE%\Desktop\FAsysinf.txt"
echo.>> "%USERPROFILE%\Desktop\FAsysinf.txt"
echo.>> "%USERPROFILE%\Desktop\FAsysinf.txt"
echo.>> "%USERPROFILE%\Desktop\FAsysinf.txt"
echo Username:>> "%USERPROFILE%\Desktop\FAsysinf.txt"
echo.>> "%USERPROFILE%\Desktop\FAsysinf.txt"
echo %Username%>> "%USERPROFILE%\Desktop\FAsysinf.txt"
echo.>> "%USERPROFILE%\Desktop\FAsysinf.txt"
echo.>> "%USERPROFILE%\Desktop\FAsysinf.txt"
echo Time and Date:>>"%USERPROFILE%\Desktop\FAsysinf.txt"
echo.>> "%USERPROFILE%\Desktop\FAsysinf.txt"
echo %Date% %Time%>> "%USERPROFILE%\Desktop\FAsysinf.txt"
echo.>> "%USERPROFILE%\Desktop\FAsysinf.txt"
echo.>> "%USERPROFILE%\Desktop\FAsysinf.txt"
echo OS Version:>> "%USERPROFILE%\Desktop\FAsysinf.txt"
echo.>> "%USERPROFILE%\Desktop\FAsysinf.txt"
ver>> "%USERPROFILE%\Desktop\FAsysinf.txt"
echo.>> "%USERPROFILE%\Desktop\FAsysinf.txt"
echo.>> "%USERPROFILE%\Desktop\FAsysinf.txt"
echo SystenInfo:>> "%USERPROFILE%\Desktop\FAsysinf.txt"
systeminfo>> "%USERPROFILE%\Desktop\FAsysinf.txt"
start /wait %USERPROFILE%\Desktop\FAsysinf.txt
echo Press enter to UPDATE the infomation
pause
del "%USERPROFILE%\Desktop\FAsysinf.txt"
goto a8

rem list Network information
:a9
echo WARNING THIS PROGRAMM WILL LIST SENSITIVE INORMATION. MAKE SURE NOONE CAN SEE YOUR SCREEN
pause
echo NETWORK INFO: > "%USERPROFILE%\Desktop\FAnetinf.txt"
echo.>> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo.>> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo.>> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo wlan Progiles:>> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo.>> "%USERPROFILE%\Desktop\FAnetinf.txt"
netsh wlan show profiles>> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo.>> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo.>> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo IP configeration:>> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo.>> "%USERPROFILE%\Desktop\FAnetinf.txt"
ipconfig>> "%USERPROFILE%\Desktop\FAnetinf.txt"
ipconfig | find /i "IPv4">> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo CONNECTIONS:>> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo.>> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo.>> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo.>> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo IP Adresses and Ports:>> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo.>> "%USERPROFILE%\Desktop\FAnetinf.txt"
netstat -an>> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo.>> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo.>> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo Higher Ports and Prossesses:>> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo.>> "%USERPROFILE%\Desktop\FAnetinf.txt"
netstat -anob>> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo.>> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo.>> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo All Conections:>> "%USERPROFILE%\Desktop\FAnetinf.txt"
netstat -anob>> "%USERPROFILE%\Desktop\FAnetinf.txt"
start /wait %USERPROFILE%\Desktop\FAnetinf.txt
echo Press enter to UPDATE the infomation
pause
del "%USERPROFILE%\Desktop\FAnetinf.txt"
goto a9

rem list all Sensitive Info
:a10
echo WARNING THIS PROGRAMM WILL LIST SENSITIVE INORMATION. MAKE SURE NOONE CAN SEE YOUR SCREEN
pause
echo ALL SENSITIVE INFO: > "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo NETWORK INFO:>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo wlan Progiles:>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
netsh wlan show profiles>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo IP configeration:>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
ipconfig>> "%USERPROFILE%\Desktop\FAallinfo.txt"
ipconfig | find /i "IPv4">> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo CONNECTIONS:>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo IP Adresses and Ports:>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
netstat -an>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo Higher Ports and Prossesses:>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
netstat -anob>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo All Conections:>> ""%USERPROFILE%\Desktop\FAallinfo.txt"
netstat -anob>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo SYSTEM INFO:>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo Username:>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo %Username%>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo Time and Date:>>"%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo %Date% %Time%>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo OS Version:>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
ver>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo SystenInfo:>> "%USERPROFILE%\Desktop\FAallinfo.txt"
systeminfo>> "%USERPROFILE%\Desktop\FAallinfo.txt" 
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo HARDWARE INFO:>> "%USERPROFILE%\Desktop\FAallinfo.txt
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo Diskspace:>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
wmic diskdrive get size>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo Bytes>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo CPU:>> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo.>>"%USERPROFILE%\Desktop\FAallinfo.txt"
wmic cpu get name>> "%USERPROFILE%\Desktop\FAallinfo.txt"
start /wait %USERPROFILE%\Desktop\FAallinfo.txt
echo Press enter to UPDATE the infomation
pause
del "%USERPROFILE%\Desktop\FAallinfo.txt"
goto a10

rem scan and repait Damaged system
:11
echo WARNING THIS CAN HARM THE SYSTEM AND CAN TAKE UP TO 2H AND U CANT TURN IT OFF
echo press any key to start scanning and repairing
pause
echo start scanning...
sfc /scannow
pause
goto start

rem restart the pc
:12
echo press any key to Restart your device
pause
Shutdown /r /t 10

rem Shutdown the pc
:13
echo press any key to Shutdown your device
pause
Shutdown /s /t 10

rem Check and Repair File System Errors
:14
echo WARNING THIS CAN HARM THE SYSTEM AND CAN TAKE UP TO 2H AND U CANT TURN IT OFF
echo press any key to start scanning and repairing
pause
echo start scanning ...
chkdsk /f
pause
goto start

rem Clean Temporary Files
:15
echo WARNING THIS CAN HARM THE SYSTEM AND CAN TAKE UP TO 2H AND U CANT TURN IT OFF
echo press any key to start cleaning
pause
cleanmgr
pause
goto start

rem Defragment the Hard Drive
:16
echo WARNING THIS CAN HARM THE SYSTEM AND CAN TAKE UP TO 2H AND U CANT TURN IT OFF
echo press any key to start cleaning
pause
defrag
pause
goto start

rem Run Performance Monitoring and Diagnostics
:17
echo WARNING THIS CAN HARM THE SYSTEM AND CAN TAKE UP TO 2H AND U CANT TURN IT OFF
echo press any key to start cleaning
pause
perfmon /report
pause
goto start
