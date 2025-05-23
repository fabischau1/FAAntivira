@echo off
setlocal enabledelayedexpansion
set "FAVersion=v.1.5"
set "url=https://bazaar.abuse.ch/export/csv/full/"
mkdir "C:\FA_Antivira"
mkdir "C:\FA_Antivira\FAprotection"
mkdir "C:\FA_Antivira\FASecLogsTxT"
mkdir "C:\FA_Antivira\Python"
mkdir "C:\FA_Antivira\FApyHlp"
mkdir "C:\FA_Antivira\FAvbs"
mkdir "C:\FA_Antivira\FASett"
mkdir "C:\FA_Antivira\FAtemp"
mkdir "C:\FA_Antivira\FAquar"
mkdir "C:\FA_Antivira\FAoptionScan"
mkdir "C:\FA_Antivira\FAadd"
echo MsgBox "the program you are trying to install uses pygame", vbInformation, "Info" > "C:\FA_Antivira\FAinfo1.vbs"
echo MsgBox "it will still work if you dont have python or pygame", vbInformation, "Info" > "C:\FA_Antivira\FAinfo2.vbs"
echo MsgBox "so you can install it without pygame", vbInformation, "Info" > "C:\FA_Antivira\FAinfo3.vbs"
echo MsgBox "but it will be a way better experience for you if u do it with", vbInformation, "Info" > "C:\FA_Antivira\FAinfo4.vbs"
cls
:start
color 0E
echo your installing FA Antivira Anti Virus Version: %FAVersion% at Date: %date% Time: %time%
echo INFO the program you are trying to install uses python it will still work if you dont have python but it will be a way better experience for you
echo Do you want to install this program? [Yes/No/TOS] (by typing yes u will also agree to the TOS type TOS to read it)
set /p input=
if /i %input%==Yes goto install
if /i %input%==No goto dontinstall
if /i %input%==TOS goto TOS
:install
(
echo @echo off
echo setlocal enabledelayedexpansion
echo color 0E
echo start "" "C:\FA_Antivira\FAprotection\FAdownprotection.bat"
echo start "" "C:\FA_Antivira\FAadd\FArev.vbs"
echo start "" "C:\FA_Antivira\FASecLogsTxT\FAupLOG.bat"
echo start "" "C:\FA_Antivira\FAvbs\FAbuttenUser.vbs"
echo start "" "C:\FA_Antivira\Python\FAMsh.py"
echo start "" "C:\FA_Antivira\FAcmd.bat"
) > "C:\FA_Antivira\Fabi_Antivira_Securety.bat"
(
echo import tkinter as tk
echo import tkinter.ttk as ttk
echo import threading
echo import time
echo class ProgressBar^(tk.Tk^):
echo     def __init__^(self^):
echo         super^(^).__init__^(^)
echo         self.title^("Installing..."^)
echo         self.geometry^("400x100"^)
echo         self.progress = tk.DoubleVar^(^)
echo         self.progress_bar = ttk.Progressbar^(self, variable=self.progress, maximum=100^)
echo         self.progress_bar.pack^(pady=20^)
echo         self.button = tk.Button^(self, text="Stop", command=self.stop_thread^)
echo         self.button.pack^(pady=20^)
echo         self.thread = None
echo         self.start_thread^(^)
echo     def update_progress^(self, value^):
echo         self.progress.set^(value^)
echo     def start_thread^(self^):
echo         if self.thread is None or not self.thread.is_alive^(^):
echo             self.thread = threading.Thread^(target=self.update_progress_slowly^)
echo             self.thread.start^(^)
echo     def update_progress_slowly^(self^):
echo         for i in range^(101^):
echo             time.sleep^(0.1^)
echo             self.after^(0, self.update_progress, i^)
echo     def stop_thread^(self^):
echo         if self.thread is not None and self.thread.is_alive^(^):
echo             self.thread.join^(^)
echo             self.thread = None
echo if __name__ == "__main__":
echo     app = ProgressBar^(^)
echo     app.mainloop^(^)
) > "C:\FA_Antivira\Python\FAload.py"
start "" "C:\FA_Antivira\Python\FAload.py"
(
echo import tkinter as tk
echo import os
echo def run_command^(i^):
echo     if i == 0:
echo         os.system^("start C:\\FA_Antivira\\FA_URLscan.bat"^)
echo     elif i == 1:
echo         os.system^("start C:\\FA_Antivira\\FAPasswordgenerator.bat"^)
echo     elif i == 2:
echo         os.system^("start C:\\FA_Antivira\\FASuperPassword.bat"^)
echo     elif i == 3:
echo         os.system^("start C:\\FA_Antivira\\FApyHlp\\FAscanmenu.py"^)
echo     elif i == 4:
echo         os.system^("start C:\\FA_Antivira\\FAantivirusopener.bat"^)
echo     elif i == 5:
echo         os.system^("start C:\\FA_Antivira\\FASett\\FApuar.bat"^)
echo     elif i == 6:
echo         os.system^("start C:\\FA_Antivira\\FAadvtool.bat"^)
echo     elif i == 7:
echo         os.system^("start C:\\FA_Antivira\\StardMenu.bat"^)
echo     elif i == 8:
echo         os.system^("start C:\\FA_Antivira\\FAmalfiledel.bat"^)
echo WIDTH, HEIGHT = 800, 600
echo button_positions = [
echo     ^(100, 100^), ^(300, 100^), ^(500, 100^),
echo     ^(100, 300^), ^(300, 300^), ^(500, 300^),
echo     ^(100, 500^), ^(300, 500^), ^(500, 500^)
echo ]
echo button_texts = [
echo     "URL Scan", "Passwort Generator", "Super Passwort Generator",
echo     "Scan Menu", "Open Anti Virus", "Quarantine",
echo     "Advanced", "Start Menu", "Kill File"
echo ]
echo root = tk.Tk^(^)
echo root.geometry^(f"{WIDTH}x{HEIGHT}"^)
echo root.title^("FA AntiVira Stardup"^)
echo root.configure^(background="#222"^)
echo for i, pos in enumerate^(button_positions^):
echo     button = tk.Button^(root, text=button_texts[i], command=lambda i=i: run_command^(i^),
echo                        font=^("Segoe UI", 12^), fg="#ddd", bg="#333",
echo                        activeforeground="#ddd", activebackground="#444",
echo                        relief="flat", padx=10, pady=5, borderwidth=0^)
echo     button.place^(x=pos[0], y=pos[1], width=200, height=50^)
echo root.mainloop^(^)
) > "C:\FA_Antivira\Python\FAMsh.py"
(
echo import tkinter as tk
echo import os
echo def run_command^(i^):
echo     if i == 0:
echo         print^("StartMenu"^)
echo     elif i == 1:
echo         print^("StartMenu"^)
echo     elif i == 2:
echo         print^("StartMenu"^)
echo     elif i == 3:
echo         os.system^("start C:\\FA_Antivira\\FApyHlp\\FAshutdown.bat"^)
echo     elif i == 4:
echo         os.system^("start notepad C:\\FA_Antivira\\FApyHlp\\FAstartmenuinfo.txt"^)
echo     elif i == 5:
echo         os.system^("start C:\\FA_Antivira\\FApyHlp\\FArestart.bat"^)
echo     elif i == 6:
echo         os.system^("start C:\\FA_Antivira\\FApyHlp\\FArestart.bat"^)
echo     elif i == 7:
echo         print^("StartMenu"^)
echo     elif i == 8:
echo         print^("StartMenu"^)
echo WIDTH, HEIGHT = 800, 600
echo button_positions = [
echo     ^(1000, 1000^), ^(300, 100^), ^(5000, 1000^),
echo     ^(100, 300^), ^(300, 300^), ^(500, 300^),
echo     ^(1000, 5000^), ^(3000, 5000^), ^(5000, 5000^)
echo ]
echo button_texts = [
echo     "URL Scan", "Start Menu", "Super Passwort Generator",
echo     "Shutdown", "Info", "Restart",
echo     "Scan For Damaged System", "Start Menu", "Kill File"
echo ]
echo root = tk.Tk^(^)
echo root.geometry^(f"{WIDTH}x{HEIGHT}"^)
echo root.title^("Start Menu"^)
echo root.configure^(background="#222"^)
echo for i, pos in enumerate^(button_positions^):
echo     button = tk.Button^(root, text=button_texts[i], command=lambda i=i: run_command^(i^),
echo                        font=^("Segoe UI", 12^), fg="#ddd", bg="#333",
echo                        activeforeground="#ddd", activebackground="#444",
echo                        relief="flat", padx=10, pady=5, borderwidth=0^)
echo     button.place^(x=pos[0], y=pos[1], width=200, height=50^)
echo root.mainloop^(^)
) > "C:\FA_Antivira\FApyHlp\\FAstartmenu.py"
(
echo Set objShell = CreateObject^("WScript.Shell"^)
echo Sub OpenFile^(filePath^)
echo     objShell.Run Chr^(34^) ^& filePath ^& Chr^(34^), 1, False
echo End Sub
echo Sub Main^(^)
echo     Dim buttonClicked
echo     buttonClicked = InputBox^("Please Choose an Option:" ^& vbCrLf ^& _
echo                             "1. Info" ^& vbCrLf ^& _
echo                             "2. Shutdown" ^& vbCrLf ^& _
echo                             "3. Restart", "FA_Antivira Start Menu"^)
echo     Select Case buttonClicked
echo         Case "1"
echo             OpenFile "C:\FA_Antivira\FApyHlp\FAstartmenuinfo.txt"
echo         Case "2"
echo             OpenFile "C:\FA_Antivira\FApyHlp\\FAshutdown.bat"
echo         Case "3"
echo             OpenFile "C:\FA_Antivira\FApyHlp\FArestart.bat"
echo         Case Else
echo             MsgBox "Invalid input please type in a number from 1 to 3"
echo     End Select
echo End Sub
echo Main
) > "C:\FA_Antivira\FAvbs\FAstartmenu.vbs"
(
echo import tkinter as tk
echo import os
echo def run_command^(i^):
echo     if i == 0:
echo         print^("StartMenu"^)
echo     elif i == 1:
echo         print^("StartMenu"^)
echo     elif i == 2:
echo         print^("StartMenu"^)
echo     elif i == 3:
echo         os.system^("start C:\\FA_Antivira\\FAquickscan.bat"^)
echo     elif i == 4:
echo         os.system^("start C:\\FA_Antivira\\FAfilescan.bat"^)
echo     elif i == 5:
echo         os.system^("start C:\\FA_Antivira\\FASystemScan.bat"^)
echo     elif i == 6:
echo         os.system^("start C:\\FA_Antivira\\FAdmgsysscan.bat"^)
echo     elif i == 7:
echo         print^("StartMenu"^)
echo     elif i == 8:
echo         print^("StartMenu"^)
echo WIDTH, HEIGHT = 800, 600
echo button_positions = [
echo     ^(1000, 1000^), ^(300, 100^), ^(5000, 1000^),
echo     ^(100, 300^), ^(300, 300^), ^(500, 300^),
echo     ^(100, 500^), ^(3000, 5000^), ^(5000, 5000^)
echo ]
echo button_texts = [
echo     "URL Scan", "Scan Menu", "Super Passwort Generator",
echo     "Quick Scan", "File Scan", "Normal + Virus Total Scan",
echo     "Scan For Damaged System", "Start Menu", "Kill File"
echo ]
echo root = tk.Tk^(^)
echo root.geometry^(f"{WIDTH}x{HEIGHT}"^)
echo root.title^("Scan Menu"^)
echo root.configure^(background="#222"^)
echo for i, pos in enumerate^(button_positions^):
echo     button = tk.Button^(root, text=button_texts[i], command=lambda i=i: run_command^(i^),
echo                        font=^("Segoe UI", 12^), fg="#ddd", bg="#333",
echo                        activeforeground="#ddd", activebackground="#444",
echo                        relief="flat", padx=10, pady=5, borderwidth=0^)
echo     button.place^(x=pos[0], y=pos[1], width=200, height=50^)
echo root.mainloop^(^)
) > "C:\FA_Antivira\FApyHlp\FAscanmenu.py"
echo these are scan methodes > "C:\FA_Antivira\FApyHlp\FAscaninfo.txt"
(
echo Set objShell = CreateObject^("WScript.Shell"^)
echo Sub OpenFile^(filePath^)
echo     objShell.Run Chr^(34^) ^& filePath ^& Chr^(34^), 1, False
echo End Sub
echo Sub Main^(^)
echo     Dim buttonClicked
echo     buttonClicked = InputBox^("Please Choose an Option:" ^& vbCrLf ^& _
echo                             "1. Quick Scan" ^& vbCrLf ^& _
echo                             "2. Normal + Virus Total Scan" ^& vbCrLf ^& _
echo                             "3. File Scan", "FA_Antivira Start Menu"^)
echo     Select Case buttonClicked
echo         Case "1"
echo             OpenFile "C:\FA_Antivira\FAquickscan.bat"
echo         Case "2"
echo             OpenFile "C:\FA_Antivira\FASystemScan.bat"
echo         Case "3"
echo             OpenFile "C:\FA_Antivira\FAfilescan.bat"
echo         Case Else
echo             MsgBox "Invalid input please type in a number from 1 to 3"
echo     End Select
echo End Sub
echo Main
) > "C:\FA_Antivira\FAvbs\FAscanmenu.vbs"
(
echo import tkinter as tk
echo import os
echo def run_command^(i^):
echo     if i == 0:
echo         os.system^("start C:\\FA_Antivira\\FApyHlp\\FAAvira.bat"^)
echo     elif i == 1:
echo         os.system^("start C:\\FA_Antivira\\FApyHlp\\FAAvast.bat"^)
echo     elif i == 2:
echo         os.system^("start C:\\FA_Antivira\\FApyHlp\\FAGData.bat"^)
echo     elif i == 3:
echo         os.system^("start C:\\FA_Antivira\\FApyHlp\\FAKaspersky.bat"^)
echo     elif i == 4:
echo         os.system^("start C:\\FA_Antivira\\FApyHlp\\FAWindDef.bat"^)
echo     elif i == 5:
echo         os.system^("start C:\\FA_Antivira\\FApyHlp\\FAMcAfee.bat"^)
echo     elif i == 6:
echo         os.system^("start C:\\FA_Antivira\\FApyHlp\\FAAVG.bat"^)
echo WIDTH, HEIGHT = 800, 600
echo button_positions = [
echo     ^(100, 100^), ^(300, 100^), ^(500, 100^),
echo     ^(100, 300^), ^(300, 300^), ^(500, 300^),
echo     ^(100, 500^)
echo ]
echo button_texts = [
echo     "Avira", "Avast", "G Data",
echo     "Kaspersky", "Windows Defender", "McAfee",
echo     "AVG"
echo ]
echo root = tk.Tk^(^)
echo root.geometry^(f"{WIDTH}x{HEIGHT}"^)
echo root.title^("FA AntiVira Anti Virus Opener"^)
echo root.configure^(background="#222"^)
echo for i, pos in enumerate^(button_positions^):
echo     button = tk.Button^(root, text=button_texts[i], command=lambda i=i: run_command^(i^),
echo                        font=^("Segoe UI", 12^), fg="#ddd", bg="#333",
echo                        activeforeground="#ddd", activebackground="#444",
echo                        relief="flat", padx=10, pady=5, borderwidth=0^)
echo     button.place^(x=pos[0], y=pos[1], width=200, height=50^)
echo root.mainloop^(^)
) > "C:\FA_Antivira\FApyHlp\FAMshAvir.py"
(
echo Here is Some helpfull advice to keep your pc save
echo -create backups on your computer
echo -Use Strong Passwords
echo -Be carefull when downloading things or clicking on links
echo -Use a Safe Browser 
echo -Avoid Fake Programs only download trusted programs and only download them from the real websides
echo -dont use usb sticks you dont know
echo -dont keep FAPasswords.docx on your pc use a usb stick to save it and if u need to save a password you edit FAPasswords.docx and save it on the usb again
) > "C:\FA_Antivira\FAhelp.txt"
(
echo this is a Antivirus addon made by the python / batch coder @fabischau
) > "C:\FA_Antivira\FAinfo.txt"
(
echo @echo off
echo setlocal
echo color 0E
echo set "scan_directory=%USERPROFILE%\Desktop"
echo for %%%%F in ^("%scan_directory%\."^) do ^(
echo     echo Scanning: %%%%~nxF
echo ^)
echo echo Scan Complete
echo pause
) > "C:\FA_Antivira\FASystemScan.bat"
(
echo @echo off
echo color 0E
echo echo please press search in windows for cmd and open it as administrator.
echo echo then type in the command sfc /scannow
echo color 04
echo echo WARNING this will take some time
echo echo WARNING DONT CLOSE THE WINDOW WHILE SCANS
echo color 0E
echo echo tipp you should have no other Programs open while its scanning
echo pause
) > "C:\FA_Antivira\FAdmgsysscan.bat"
(
echo @echo off
echo setlocal enabledelayedexpansion
echo color 0E
echo start "" "C:\FA_Antivira\FAvbs\FAstartmenu.vbs"
echo start "" "C:\FA_Antivira\FApyHlp\FAstartmenu.py"
echo start "" "C:\FA_Antivira\FAcmd.bat"
) > "C:\FA_Antivira\StardMenu.bat"
(
echo @echo off
echo color 0E
echo Starting Quickscan...
echo "%ProgramFiles%\Windows Defender\MpCmdRun.exe" -Scan -ScanType 1
echo echo Quickscan abgeschlossen!
echo echo QuickScaning...
echo start "" "%ProgramFiles%\Windows Defender\MSASCui.exe"
echo pause
) > "C:\FA_Antivira\FAquickscan.bat"
(
echo sorry url scan is unavailable at the moment we will use an updated version some time later
) > "C:\FA_Antivira\FAurlDataBank.txt"
(
echo @echo off
echo setlocal enabledelayedexpansion
echo color 0E
echo set "characters=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%%^&^*(^)^_^+[^]{^}^|^;^:^,^.<^>^?^~"
echo set "passwordLength=12"
echo set "password="
echo for /l %%%%i in ^(1,1,%%passwordLength%%^) do ^(
echo     set /a "randomIndex=^!random^! %%%% 94"
echo     call set "char=%%%%characters:~^!randomIndex^!,1%%%%"
echo     set "password=^!password^!^!char^!"
echo ^)
echo echo Your Generated Password Is:"^!password^!"
echo pause
) > "C:\FA_Antivira\FAPasswordgenerator.bat"
(
echo @echo off
echo setlocal enabledelayedexpansion
echo color 0E
echo set "characters=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%%^&^*(^)^_^+[^]{^}^|^;^:^,^.<^>^?^~"
echo set "passwordLength=30"
echo set "password="
echo for /l %%%%i in ^(1,1,%%passwordLength%%^) do ^(
echo     set /a "randomIndex=^!random^! %%%% 94"
echo     call set "char=%%%%characters:~^!randomIndex^!,1%%%%"
echo     set "password=^!password^!^!char^!"
echo ^)
echo echo Your Generated Password Is:"^!password^!"
echo pause
) > "C:\FA_Antivira\FASuperPassword.bat"
(
echo @echo off
echo color 0E
echo sorry url scan is unavailable at the moment we will use an updated version some time later
echo pause
echo exit
echo echo please dont put the https:// or the http:// infront of the link or the scanner will get confused and may not work properly.
echo set /p userInput="Please type an URL like this example.com: "
echo findstr /i "%%userInput%%" "C:\FA_Antivira\FAurlDataBank.txt" ^> nul
echo if %%errorlevel%% equ 0 ^(
echo     echo FA DataBank flagged this URL: "%%userInput%%" as malicious.
echo ^) else ^(
echo     echo FA DataBank flagged this URL: "%%userInput%%" as probaly safe.or the data bank doesnt include this url. or you didnt follow the instructions for better instruktions look at info.
echo ^)
echo pause ^>nul
) > "C:\FA_Antivira\FA_URLscan.bat"
(
echo @echo off
echo setlocal enabledelayedexpansion
echo color 0E
echo start "" "C:\FA_Antivira\FApyHlp\FAMshAvir.py"
echo start "" "C:\FA_Antivira\FAvbs\FAbuttenAntiVirusUser.vbs"
echo start "" "C:\FA_Antivira\FAcmd.bat"
) > "C:\FA_Antivira\FAantivirusopener.bat"
(
echo @echo off
echo color 0E
echo echo installing short cut .
echo timeout /t 1 >nul
echo cls
echo echo installing short cut ..
echo timeout /t 1 >nul
echo cls
echo echo installing short cut ...
echo timeout /t 1 >nul
echo cls
echo echo installing short cut .
echo timeout /t 1 >nul
echo cls
echo echo installing short cut ..
echo timeout /t 1 >nul
echo cls
echo echo installing short cut ...
echo timeout /t 1 >nul
echo cls
echo setlocal
echo set "batchPath=C:\FA_Antivira\Fabi_Antivira_Securety.bat"
echo set "desktopFolder=%%USERPROFILE%%\Desktop"
echo set "shortcutName=FA Security.lnk"
echo powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%%desktopFolder%%\%%shortcutName%%');$s.TargetPath='%%batchPath%%';$s.Save()"
echo echo Installer Shortcut: %%desktopFolder%%\%%shortcutName%%
echo pause
) > "C:\FA_Antivira\FAshortcutinstallerdesktop.bat"
(
echo @echo off
echo color 0E
echo set "LogFile=C:\FA_Antivira\FASecLogsTxT\FAupLOGlogFile.txt"
echo set "TriggerFile=C:\FA_Antivira\Fabi_Antivira_Securety.bat"
echo :loop
echo if exist "%%TriggerFile%%" ^(
echo     echo %%date%% %%time%% - Fabi AntiVira Securety was opened. ^>^> "%%LogFile%%"
echo     rem Hier weitere Aktionen ausführen, z. B. in die Logdatei schreiben.
echo     timeout /t 5 ^> nul
echo     goto loop
echo ^) else ^(
echo     echo %%date%% %%time%% - Fabi AntiVira Securety couldnt be opened. ^>^> "%%LogFile%%"
echo ^)
) > "C:\FA_Antivira\FASecLogsTxT\FAupLOG.bat"
(
echo Set objShell = CreateObject^("WScript.Shell"^)
echo Sub OpenFile^(filePath^)
echo     objShell.Run Chr^(34^) ^& filePath ^& Chr^(34^), 1, False
echo End Sub
echo Sub Main^(^)
echo     Dim buttonClicked
echo     buttonClicked = InputBox^("Please Choose an Anti Virus:" ^& vbCrLf ^& _
echo                             "1. Avira" ^& vbCrLf ^& _
echo                             "2. Avast" ^& vbCrLf ^& _
echo                             "3. G Data" ^& vbCrLf ^& _
echo                             "4. Kaspersky" ^& vbCrLf ^& _
echo                             "5. Windows Defender" ^& vbCrLf ^& _
echo                             "6. McAfee" ^& vbCrLf ^& _
echo                             "7. AVG", "FA_Antivira"^)
echo     Select Case buttonClicked
echo         Case "1"
echo             OpenFile "C:\FA_Antivira\FApyHlp\FAAvira.bat"
echo         Case "2"
echo             OpenFile "C:\FA_Antivira\FApyHlp\FAAvast.bat"
echo         Case "3"
echo             OpenFile "C:\FA_Antivira\FApyHlp\FAGData.bat"
echo         Case "4"
echo             OpenFile "C:\FA_Antivira\FApyHlp\FAKaspersky.bat"
echo         Case "5"
echo             OpenFile "C:\FA_Antivira\FApyHlp\FAWindDef.bat"
echo         Case "6"
echo             OpenFile "C:\FA_Antivira\FApyHlp\FAMcAfee.bat"
echo         Case "7"
echo             OpenFile "C:\FA_Antivira\FApyHlp\FAAVG.bat"
echo         Case Else
echo             MsgBox "Invalid input please type in a number from 1 to 9"
echo     End Select
echo End Sub
echo Main
) > "C:\FA_Antivira\FAvbs\FAbuttenAntiVirusUser.vbs"
(
echo Antwort = MsgBox^("Do You Want To Review FA Antivira And Give Suggestions?", vbExclamation + vbYesNo, "AD"^)
echo If Antwort = vbYes Then
echo     CreateObject^("WScript.Shell"^).Run "https://discord.gg/Wk6eJpGCeY"
echo Else
echo     MsgBox "Okay"
echo End If
) > "C:\FA_Antivira\FAadd\FArev.vbs"
(
echo Set objShell = CreateObject^("WScript.Shell"^)
echo Sub OpenFile^(filePath^)
echo     objShell.Run Chr^(34^) ^& filePath ^& Chr^(34^), 1, False
echo End Sub
echo Sub Main^(^)
echo     Dim buttonClicked
echo     buttonClicked = InputBox^("Please Choose an Option:" ^& vbCrLf ^& _
echo                             "1. URL Scan" ^& vbCrLf ^& _
echo                             "2. Passwort Generator" ^& vbCrLf ^& _
echo                             "3. Super Passwort Generator" ^& vbCrLf ^& _
echo                             "4. Scan Menu" ^& vbCrLf ^& _
echo                             "5. Open Anti Virus" ^& vbCrLf ^& _
echo                             "6. Quarantine" ^& vbCrLf ^& _
echo                             "7. Advanced" ^& vbCrLf ^& _
echo                             "8. Stard Menu" ^& vbCrLf ^& _
echo                             "9. Kill File", "FA_Antivira"^)
echo     Select Case buttonClicked
echo         Case "1"
echo             OpenFile "C:\FA_Antivira\FA_URLscan.bat"
echo         Case "2"
echo             OpenFile "C:\FA_Antivira\FAPasswordgenerator.bat"
echo         Case "3"
echo             OpenFile "C:\FA_Antivira\FASuperPassword.bat"
echo         Case "4"
echo             OpenFile "C:\FA_Antivira\FAvbs\FAscanmenu.vbs"
echo         Case "5"
echo             OpenFile "C:\FA_Antivira\FAantivirusopener.bat"
echo         Case "6"
echo             OpenFile "C:\FA_Antivira\FASett\FApuar.bat"
echo         Case "7"
echo             OpenFile "C:\FA_Antivira\FAadvtool.bat"
echo         Case "8"
echo             OpenFile "C:\FA_Antivira\StardMenu.bat"
echo         Case "9"
echo             OpenFile "C:\FA_Antivira\FAmalfiledel.bat"
echo         Case Else
echo             MsgBox "Invalid input please type in a number from 1 to 9"
echo     End Select
echo End Sub
echo Main
) > "C:\FA_Antivira\FAvbs\FAbuttenUser.vbs"
(
echo import pygame
echo import os
echo import sys
echo pygame.init^(^)
echo window = pygame.display.set_mode^(^(800, 600^)^)
echo font = pygame.font.Font^(None, 80^)
echo text = font.render^('File Is Detected as Malware', True, ^(0, 0, 0^), ^(139, 0, 0^)^)
echo button_font = pygame.font.Font^(None, 48^)
echo ignore_button = pygame.Rect^(100, 400, 200, 100^)
echo delete_button = pygame.Rect^(500, 400, 200, 100^)
echo while True:
echo     for event in pygame.event.get^(^):
echo         if event.type == pygame.QUIT:
echo             sys.exit^(^)
echo         if event.type == pygame.MOUSEBUTTONDOWN:
echo             mouse_pos = event.pos
echo             if ignore_button.collidepoint^(mouse_pos^):
echo                 sys.exit^(^)
echo             elif delete_button.collidepoint^(mouse_pos^):
echo                 os.system^("start C:\\FA_Antivira\\FAmalfiledel.bat"^)
echo     window.fill^(^(139, 0, 0^)^)
echo     window.blit^(text, ^(50, 50^)^)
echo     pygame.draw.rect^(window, ^[100, 100, 100^], ignore_button^)
echo     pygame.draw.rect^(window, ^[100, 100, 100^], delete_button^)
echo     window.blit^(button_font.render^('Ignore', True, ^(0, 0, 0^)^), ^(130, 420^)^)
echo     window.blit^(button_font.render^('Delete', True, ^(0, 0, 0^)^), ^(530, 420^)^)
echo     pygame.display.flip^(^)
) > "C:\FA_Antivira\Python\FAwarnfilescan.py"
echo 1
(
echo @echo off
echo color 0E
echo set /p filepath="Please Type In The Path Of The File You Want To Kill: "
echo for /L %%%%i in ^(1,1,20000^) do ^(
echo     echo This File Was Overwritten By FA AntiVira %%%%i Times ^> "%%filepath%%"
echo ^)
echo del /F /Q "%%filepath%%"
echo echo File Killed.
echo echo File Was Permanently Deleted And Overwritten 20000 Times
echo pause
) > "C:\FA_Antivira\FAmalfiledel.bat"
(
echo @echo off
echo setlocal enabledelayedexpansion
echo set "line=0"
echo for /f "delims=" %%%%A in ^(FAtemp.txt^) do ^(
echo     set /a line+=1
echo     call :checkLine %%%%A
echo ^)
echo exit /b
echo :checkLine
echo if %%line%% equ 2 ^(
echo     findstr /i "%%~1" "C:\FA_Antivira\FAMalHashDatabase.txt" ^> nul
echo 	echo The File Hash is: %%~1
echo     call :checkError
echo ^)
echo exit /b
echo :checkError
echo if %%errorlevel%% equ 0 ^(
echo     color 04
echo     echo Malware Detected
echo 	 start "" "C:\FA_Antivira\Python\FAwarnfilescan.py"
echo 	 echo Date:%%Date%% Time: %%Time%% Result: Malware found ^>^>"C:\FA_Antivira\FASecLogsTxT\FA_File_Scan_Log.txt"
echo	 start "" "C:\FA_Antivira\FAquickscan.bat"
echo     pause
echo ^) else ^(
echo     color 0a
echo     echo No Malware found
echo	 start "" "C:\FA_Antivira\FAquickscan.bat"
echo 	 echo Date:%%Date%% Time: %%Time%% Result: No Malware found ^>^>"C:\FA_Antivira\FASecLogsTxT\FA_File_Scan_Log.txt"
echo     pause
echo ^)
echo exit /b
) > "C:\FA_Antivira\FAhashshower.bat"
(
echo @echo off
echo setlocal
echo set /p FILE_PATH=File Path:
echo if not exist %%FILE_PATH%% ^(
echo     echo File Does Not Ecsist.
echo 	pause
echo     goto :eof
echo ^)
echo certutil -hashfile %%FILE_PATH%% SHA256 ^> FAtemp.txt
echo 	timeout /t 3 ^>nul
echo 	start "" "C:\FA_Antivira\FAhashshower.bat"
echo 	pause
echo     goto :next
echo ^)
echo :next
echo del FAtemp.txt
echo :end
echo endlocal
) > "C:\FA_Antivira\FAfilescan.bat"
(
echo $scriptPath = $MyInvocation.MyCommand.Definition
echo Set-Location $PSScriptRoot
echo Set-ExecutionPolicy RemoteSigned -Scope Process -Force
echo $quarantinePath = "C:\FA_Antivira\FAquar"
echo $MalwareDatabase = "C:\FA_Antivira\FAMalHashDatabase.txt"
echo $LogFile = "C:\FA_Antivira\FASecLogsTxT\FA_File_Scan_Log.txt"
echo $Extensions = "*.dll", "*.exe", "*.bat", "*.cmd", "*.py", "*.js", "*.ps1", "*.vbs", "*.wsf", "*.msh"
echo function Check-File^($filePath^) {
echo     $fileName = [System.IO.Path]::GetFileName^($filePath^)
echo     $fileHash = ^(Get-FileHash -Path $filePath -Algorithm SHA256^).Hash
echo     if ^(Select-String -Path $MalwareDatabase -Pattern $fileHash^) {
echo         Write-Host "Malware Detected in $filePath" -ForegroundColor Red
echo         Add-Content -Path $LogFile -Value ^("Date: {0} Time: {1} Result: Malware found in $fileName" -f ^(Get-Date^), ^(Get-Date -Format "HH:mm:ss"^)^)
echo         Move-Item -Path $filePath -Destination $quarantinePath
echo         Write-Host File $filePath was moved to Quarantine
echo         Pause
echo     } else {
echo         Write-Host "No Malware found in $filePath" -ForegroundColor Green
echo         Add-Content -Path $LogFile -Value ^("Date: {0} Time: {1} Result: No Malware found in $fileName" -f ^(Get-Date^), ^(Get-Date -Format "HH:mm:ss"^)^)
echo     }
echo }
echo function Check-Directory^($directoryPath^) {
echo     Get-ChildItem -Path $directoryPath -Recurse -File -Include $Extensions ^| ForEach-Object {
echo         Check-File -filePath $_.FullName
echo     }
echo }
echo Check-Directory -directoryPath $PWD
echo pause
) > "%USERPROFILE%\Desktop\FAtempscan.ps1"
(
echo $scriptPath = $MyInvocation.MyCommand.Definition
echo Set-Location $PSScriptRoot
echo Set-ExecutionPolicy RemoteSigned -Scope Process -Force
echo $quarantinePath = "C:\FA_Antivira\FAquar"
echo $MalwareDatabase = "C:\FA_Antivira\FAMalHashDatabase.txt"
echo $LogFile = "C:\FA_Antivira\FASecLogsTxT\FA_File_Scan_Log.txt"
echo $Extensions = "*.dll", "*.exe", "*.bat", "*.cmd", "*.py", "*.js", "*.ps1", "*.vbs", "*.wsf", "*.msh"
echo function Check-File^($filePath^) {
echo     $fileName = [System.IO.Path]::GetFileName^($filePath^)
echo     $fileHash = ^(Get-FileHash -Path $filePath -Algorithm SHA256^).Hash
echo     if ^(Select-String -Path $MalwareDatabase -Pattern $fileHash^) {
echo         Write-Host "Malware Detected in $filePath" -ForegroundColor Red
echo         Add-Content -Path $LogFile -Value ^("Date: {0} Time: {1} Result: Malware found in $fileName" -f ^(Get-Date^), ^(Get-Date -Format "HH:mm:ss"^)^)
echo         Move-Item -Path $filePath -Destination $quarantinePath
echo         Write-Host File $filePath was moved to Quarantine
echo         Pause
echo     } else {
echo         Write-Host "No Malware found in $filePath" -ForegroundColor Green
echo         Add-Content -Path $LogFile -Value ^("Date: {0} Time: {1} Result: No Malware found in $fileName" -f ^(Get-Date^), ^(Get-Date -Format "HH:mm:ss"^)^)
echo     }
echo }
echo function Check-Directory^($directoryPath^) {
echo     Get-ChildItem -Path $directoryPath -Recurse -File -Include $Extensions ^| ForEach-Object {
echo         Check-File -filePath $_.FullName
echo     }
echo }
echo Check-Directory -directoryPath $PWD
echo pause
) > "%USERPROFILE%\Downloads\FAdowscan.ps1"
(
echo $scriptPath = $MyInvocation.MyCommand.Definition
echo Set-Location $PSScriptRoot
echo Set-ExecutionPolicy RemoteSigned -Scope Process -Force
echo $quarantinePath = "C:\FA_Antivira\FAquar"
echo $MalwareDatabase = "C:\FA_Antivira\FAMalHashDatabase.txt"
echo $LogFile = "C:\FA_Antivira\FASecLogsTxT\FA_File_Scan_Log.txt"
echo $Extensions = "*.dll", "*.exe", "*.bat", "*.cmd", "*.py", "*.js", "*.ps1", "*.vbs", "*.wsf", "*.msh"
echo function Check-File^($filePath^) {
echo     $fileName = [System.IO.Path]::GetFileName^($filePath^)
echo     $fileHash = ^(Get-FileHash -Path $filePath -Algorithm SHA256^).Hash
echo     if ^(Select-String -Path $MalwareDatabase -Pattern $fileHash^) {
echo         Write-Host "Malware Detected in $filePath" -ForegroundColor Red
echo         Add-Content -Path $LogFile -Value ^("Date: {0} Time: {1} Result: Malware found in $fileName" -f ^(Get-Date^), ^(Get-Date -Format "HH:mm:ss"^)^)
echo         Move-Item -Path $filePath -Destination $quarantinePath
echo         Write-Host File $filePath was moved to Quarantine
echo         Pause
echo     } else {
echo         Write-Host "No Malware found in $filePath" -ForegroundColor Green
echo         Add-Content -Path $LogFile -Value ^("Date: {0} Time: {1} Result: No Malware found in $fileName" -f ^(Get-Date^), ^(Get-Date -Format "HH:mm:ss"^)^)
echo     }
echo }
echo function Check-Directory^($directoryPath^) {
echo     Get-ChildItem -Path $directoryPath -Recurse -File -Include $Extensions ^| ForEach-Object {
echo         Check-File -filePath $_.FullName
echo     }
echo }
echo Check-Directory -directoryPath $PWD
echo pause
) > "C:\FA_Antivira\FAoptionScan\FAscanthfol.ps1"
(
echo $blacklistFile = "C:\FA_Antivira\FASett\FAbatblacklist.txt"
echo $vbsPath = "C:\FA_Antivira\FAvbs\FAwaarnbat.vbs"
echo $batchFiles = Get-ChildItem -Recurse ^| Where-Object { $_.Extension -eq ".bat" -or $_.Extension -eq ".cmd" } ^| Where-Object { $_.FullName -ne $MyInvocation.MyCommand.Path }
echo $ErrorActionPreference = "SilentlyContinue"
echo $vbsOpened = $false
echo foreach ^($batchFile in $batchFiles^) {
echo     $batchFileContent = Get-Content -Path $batchFile.FullName
echo     foreach ^($line in $batchFileContent^) {
echo         $commands = $line -split '\s+'
echo         foreach ^($command in $commands^) {
echo             $escapedCommand = [regex]::Escape^($command^)
echo             if ^(Select-String -Path $blacklistFile -Pattern "^$escapedCommand$" -Quiet^) {
echo                 Write-Output "Command '$command' in batch file '$batchFile' is in the blacklist."
echo                 if ^(!$vbsOpened^) {
echo                     Invoke-Item -Path $vbsPath
echo                     $vbsOpened = $true
echo                 }
echo             }
echo         }
echo     }
echo }
echo if ^(!$vbsOpened^) {
echo     Write-Output "No blacklisted commands found."
echo }
echo pause
echo $ErrorActionPreference = "Continue"
) > "C:\FA_Antivira\FAoptionScan\FAscanthfolbat.ps1"
(
echo $blacklistFile = "C:\FA_Antivira\FASett\FAbatblacklist.txt"
echo $vbsPath = "C:\FA_Antivira\FAvbs\FAwaarnbat.vbs"
echo $batchFiles = Get-ChildItem -Recurse ^| Where-Object { $_.Extension -eq ".bat" -or $_.Extension -eq ".cmd" } ^| Where-Object { $_.FullName -ne $MyInvocation.MyCommand.Path }
echo $ErrorActionPreference = "SilentlyContinue"
echo $vbsOpened = $false
echo foreach ^($batchFile in $batchFiles^) {
echo     $batchFileContent = Get-Content -Path $batchFile.FullName
echo     foreach ^($line in $batchFileContent^) {
echo         $commands = $line -split '\s+'
echo         foreach ^($command in $commands^) {
echo             $escapedCommand = [regex]::Escape^($command^)
echo             if ^(Select-String -Path $blacklistFile -Pattern "^$escapedCommand$" -Quiet^) {
echo                 Write-Output "Command '$command' in batch file '$batchFile' is in the blacklist."
echo                 if ^(!$vbsOpened^) {
echo                     Invoke-Item -Path $vbsPath
echo                     $vbsOpened = $true
echo                 }
echo             }
echo         }
echo     }
echo }
echo if ^(!$vbsOpened^) {
echo     Write-Output "No blacklisted commands found."
echo }
echo pause
echo $ErrorActionPreference = "Continue"
) > "%USERPROFILE%\Downloads\FAdowscanbat.ps1"
(
echo $blacklistFile = "C:\FA_Antivira\FASett\FAbatblacklist.txt"
echo $vbsPath = "C:\FA_Antivira\FAvbs\FAwaarnbat.vbs"
echo $batchFiles = Get-ChildItem -Recurse ^| Where-Object { $_.Extension -eq ".bat" -or $_.Extension -eq ".cmd" } ^| Where-Object { $_.FullName -ne $MyInvocation.MyCommand.Path }
echo $ErrorActionPreference = "SilentlyContinue"
echo $vbsOpened = $false
echo foreach ^($batchFile in $batchFiles^) {
echo     $batchFileContent = Get-Content -Path $batchFile.FullName
echo     foreach ^($line in $batchFileContent^) {
echo         $commands = $line -split '\s+'
echo         foreach ^($command in $commands^) {
echo             $escapedCommand = [regex]::Escape^($command^)
echo             if ^(Select-String -Path $blacklistFile -Pattern "^$escapedCommand$" -Quiet^) {
echo                 Write-Output "Command '$command' in batch file '$batchFile' is in the blacklist."
echo                 if ^(!$vbsOpened^) {
echo                     Invoke-Item -Path $vbsPath
echo                     $vbsOpened = $true
echo                 }
echo             }
echo         }
echo     }
echo }
echo if ^(!$vbsOpened^) {
echo     Write-Output "No blacklisted commands found."
echo }
echo pause
echo $ErrorActionPreference = "Continue"
) > "%USERPROFILE%\Desktop\FAtempscanbat.ps1"
(
echo $apiKey = Read-Host -Prompt "Please Enter Your VirusTotal API Key"
echo $currentDir = $PSScriptRoot
echo $files = Get-ChildItem -Path $currentDir -File
echo $FAquarDir = "C:\FA_AntiVira\FAquar"
echo foreach ^($file in $files^) {
echo     $filePath = $file.FullName
echo     $fileHash = Get-FileHash -Path $filePath -Algorithm SHA256
echo     $apiUrl = "https://www.virustotal.com/api/v3/files/$($fileHash.Hash)"
echo     $response = Invoke-WebRequest -Uri $apiUrl -Headers @{ "x-apikey" = $apiKey } -Method GET -ErrorAction Stop
echo     if ^($response.StatusCode -eq 200^) {
echo         $jsonResponse = $response.Content ^| ConvertFrom-Json
echo         $detections = $jsonResponse.data.attributes.last_analysis_stats.malicious
echo         if ^($detections -eq 0^) {
echo             Write-Host "File '$($file.Name)' Was Filed As Clean"
echo             Write-Host "Anti Virus Detections: $detections"
echo         }
echo         elseif ^($detections -ge 3 -and $detections -lt 5^) {
echo             Write-Host "File '$($file.Name)' Was Filed As Suspicious"
echo             Write-Host "Anti Virus Detections: $detections"
echo         }
echo         elseif ^($detections -ge 5^) {
echo             if ^($detections -lt 20^) {
echo                 Write-Host "File '$($file.Name)' Was Filed As Dangerous"
echo                 Write-Host "Anti Virus Detections: $detections"
echo                 if ^($detections -gt 4^) {
echo                     Move-Item -Path $filePath -Destination $FAquarDir
echo 			         Write-Host "File '$($file.Name)' Was Moved To Quarantine because it had $detections Detections"
echo                 }
echo             }
echo             else {
echo                 Write-Host "File '$($file.Name)' Was Filed As Extreamly Dangerous"
echo                 Write-Host "Anti Virus Detections: $detections"
echo                 Move-Item -Path $filePath -Destination $FAquarDir
echo             }
echo         }
echo         else {
echo             Write-Host "Number of Malware Detections: $detections"
echo         }
echo     }
echo     else {
echo         Write-Host "Error by the request of the VirusTotal-API"
echo     }
echo     Start-Sleep -s 60
echo }
echo pause
) > "C:\FA_Antivira\FAoptionScan\FAtempscanVT.ps1"
(
echo $apiKey = Read-Host -Prompt "Please Enter Your VirusTotal API Key"
echo $currentDir = $PSScriptRoot
echo $files = Get-ChildItem -Path $currentDir -File
echo $FAquarDir = "C:\FA_AntiVira\FAquar"
echo foreach ^($file in $files^) {
echo     $filePath = $file.FullName
echo     $fileHash = Get-FileHash -Path $filePath -Algorithm SHA256
echo     $apiUrl = "https://www.virustotal.com/api/v3/files/$($fileHash.Hash)"
echo     $response = Invoke-WebRequest -Uri $apiUrl -Headers @{ "x-apikey" = $apiKey } -Method GET -ErrorAction Stop
echo     if ^($response.StatusCode -eq 200^) {
echo         $jsonResponse = $response.Content ^| ConvertFrom-Json
echo         $detections = $jsonResponse.data.attributes.last_analysis_stats.malicious
echo         if ^($detections -eq 0^) {
echo             Write-Host "File '$($file.Name)' Was Filed As Clean"
echo             Write-Host "Anti Virus Detections: $detections"
echo         }
echo         elseif ^($detections -ge 3 -and $detections -lt 5^) {
echo             Write-Host "File '$($file.Name)' Was Filed As Suspicious"
echo             Write-Host "Anti Virus Detections: $detections"
echo         }
echo         elseif ^($detections -ge 5^) {
echo             if ^($detections -lt 20^) {
echo                 Write-Host "File '$($file.Name)' Was Filed As Dangerous"
echo                 Write-Host "Anti Virus Detections: $detections"
echo                 if ^($detections -gt 4^) {
echo                     Move-Item -Path $filePath -Destination $FAquarDir
echo 			         Write-Host "File '$($file.Name)' Was Moved To Quarantine because it had $detections Detections"
echo                 }
echo             }
echo             else {
echo                 Write-Host "File '$($file.Name)' Was Filed As Extreamly Dangerous"
echo                 Write-Host "Anti Virus Detections: $detections"
echo                 Move-Item -Path $filePath -Destination $FAquarDir
echo             }
echo         }
echo         else {
echo             Write-Host "Number of Malware Detections: $detections"
echo         }
echo     }
echo     else {
echo         Write-Host "Error by the request of the VirusTotal-API"
echo     }
echo     Start-Sleep -s 60
echo }
echo pause
) > "%USERPROFILE%\Downloads\FAdowscanVT.ps1"
(
echo $quarantinePath = "C:\FA_Antivira\FAquar"
echo $scriptDirectory = Split-Path -Path $PSCommandPath -Parent
echo $exeFiles = Get-ChildItem -Path $scriptDirectory -Filter *.exe -Recurse
echo foreach ^($exeFile in $exeFiles^) {
echo     $signature = Get-AuthenticodeSignature -FilePath $exeFile.FullName
echo     if ^($signature.Status -eq "Valid"^) {
echo         Write-Host "file '$($exeFile.Name)' has a legitement signature"
echo         continue
echo     }    try {
echo         Move-Item -Path $exeFile.FullName -Destination $quarantinePath
echo         Write-Host "file '$($exeFile.Name)' was put into Quarantine."
echo     } catch {
echo         Write-Host "Error we couldnt put '$($exeFile.Name)' into Quarantine $_"
echo     }
echo }
echo Write-Host "Press any key to continue..."
echo Read-Host
) > "%USERPROFILE%\Downloads\FAdowscanSIG.ps1"
(
echo $quarantinePath = "C:\FA_Antivira\FAquar"
echo $scriptDirectory = Split-Path -Path $PSCommandPath -Parent
echo $exeFiles = Get-ChildItem -Path $scriptDirectory -Filter *.exe -Recurse
echo foreach ^($exeFile in $exeFiles^) {
echo     $signature = Get-AuthenticodeSignature -FilePath $exeFile.FullName
echo     if ^($signature.Status -eq "Valid"^) {
echo         Write-Host "file '$($exeFile.Name)' has a legitement signature"
echo         continue
echo     }    try {
echo         Move-Item -Path $exeFile.FullName -Destination $quarantinePath
echo         Write-Host "file '$($exeFile.Name)' was put into Quarantine."
echo     } catch {
echo         Write-Host "Error we couldnt put '$($exeFile.Name)' into Quarantine $_"
echo     }
echo }
echo Write-Host "Press any key to continue..."
echo Read-Host
) > "C:\FA_Antivira\FAoptionScan\FAdowscanSIG.ps1"
(
echo @echo off
echo color 0a
echo powershell -NoProfile -ExecutionPolicy Bypass -File "%USERPROFILE%\Desktop\FAtempscan.ps1"
echo powershell -NoProfile -ExecutionPolicy Bypass -File "%USERPROFILE%\Downloads\FAdowscan.ps1"
echo powershell -NoProfile -ExecutionPolicy Bypass -File "C:\FA_Antivira\FAoptionScan\FAscanthfol.ps1"
echo powershell -NoProfile -ExecutionPolicy Bypass -File "%USERPROFILE%\Downloads\FAdowscanSIG.ps1"
echo powershell -NoProfile -ExecutionPolicy Bypass -File "C:\FA_Antivira\FAoptionScan\FAdowscanSIG.ps1"
echo echo THE FOLLOWING BATCH SCAN MAY HAVE A LOT OF FALSE POSITIVS
echo pause
echo start "" powershell -ExecutionPolicy Bypass -File "%USERPROFILE%\Desktop\FAtempscanbat.ps1"
echo pause
echo start "" powershell -ExecutionPolicy Bypass -File "%USERPROFILE%\Downloads\FAdowscanbat.ps1"
echo pause
echo start "" powershell -ExecutionPolicy Bypass -File "C:\FA_Antivira\FAoptionScan\FAscanthfolbat.ps1"
echo pause
echo echo Press any key to Continue with the Quickscan
echo pause
echo start "" "C:\FA_Antivira\FAquickscan.bat"
echo :VT
echo echo Put Every File You Want To Scan With Virus Total Into This Folder
echo echo DONT PUT PERSONAL FILES OR FILES WITH SENSITIVE INFORMATION OF YOU OR OTHERS THERE
echo start C:\FA_Antivira\FAoptionScan\
echo echo You Need Your Own Api Key AND YOU HAVE TO READ THE TOS OF VIRUS TOTAL
echo echo Did you read the TOS of virus total and have your own api key and want to continue with the scan then type in yes. if that isnt the case type help.
echo set /p input="Your Choice: "
echo if /i %%input%%==Yes goto Yes
echo if /i %%input%%==Help goto Help
echo :Yes
echo powershell -NoProfile -ExecutionPolicy Bypass -File "C:\FA_Antivira\FAoptionScan\FAtempscanVT.ps1"
echo powershell -NoProfile -ExecutionPolicy Bypass -File "%USERPROFILE%\Downloads\FAdowscanVT.ps1"
echo pause
echo exit
echo :Help
echo start https://docs.virustotal.com/docs/terms-of-service
echo start https://docs.virustotal.com/docs/privacy-policy
echo start https://docs.virustotal.com/docs/how-it-works
echo echo now go to Virus total then make an account then goto your ptofile click on api key and copy the api key
echo pause
echo goto VT
) > "C:\FA_Antivira\FASystemScan.bat"
attrib +H "%USERPROFILE%\Desktop\FAtempscanbat.ps1"
attrib +H "%USERPROFILE%\Downloads\FAdowscanbat.ps1"
attrib +H "C:\FA_Antivira\FAoptionScan\FAscanthfolbat.ps1"
attrib +H "%USERPROFILE%\Desktop\FAtempscan.ps1"
attrib +H "%USERPROFILE%\Downloads\FAdowscan.ps1"
attrib +H "C:\FA_Antivira\FAoptionScan\FAscanthfol.ps1"
attrib +H "C:\FA_Antivira\FAoptionScan\FAtempscanVT.ps1"
attrib +H "%USERPROFILE%\Downloads\FAdowscanVT.ps1"
attrib +H "C:\FA_Antivira\FAoptionScan\FAdowscanSIG.ps1"
attrib +H "%USERPROFILE%\Downloads\FAdowscanSIG.ps1"
(
echo format
echo bcdedit
echo wevtutil
echo del
echo erase
echo rd
echo rmdir
echo takeown 
echo FORMAT
echo BCEDIT
echo WEVTUTIL
echo DEL
echo ERASE
echo RD
echo RMDIR
echo TAKEOWN
echo Encrypted
echo encrypted
echo Ipconfig
echo Wlan
echo HKLM\Software\Microsoft\Windows\CurrentVersion\Run
echo HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableTaskMgr
echo HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableRegistryTools
echo HKLM\SYSTEM\CurrentControlSet\Services
echo HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnceEx
echo HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\Userinit
echo HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist
echo HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks
echo DisableRealtimeMonitoring
echo DisableIntrusionPreventionSystem
echo DisableIOAVProtection
echo DisableScriptScanning
echo DisableEmailProtection
echo DisableControlledFolderAccess
echo DisableAntiSpyware
echo MRU
echo DisableRealtimeMonitoring
echo Real-Time
echo DisableNetworkProtection
echo AllowedApplications
echo ExcludedPaths
echo ProtectedFolders
echo ProtectionEnabled
echo PromptedProtectionEnabled
echo RansomwareProtectionEnabled
echo DisableTaskMgr
echo fDenyTSConnections
) > "C:\FA_Antivira\FASett\FAbatblacklist.txt"
echo. > "C:\FA_Antivira\FASecLogsTxT\FAupLOGlogFile.txt"
echo ---------------------------------------------------------------------------------> "C:\FA_Antivira\FASecLogsTxT\FA_File_Scan_Log.txt"
echo ---------------------------------------------------------------------------------> "C:\FA_Antivira\FASecLogsTxT\FA_Quick_Scan_Log.txt"
echo ---------------------------------------------------------------------------------> "C:\FA_Antivira\FASecLogsTxT\FA_Full_Scan_Log.txt"
echo ---------------------------------------------------------------------------------> "C:\FA_Antivira\FASecLogsTxT\FA_Path_Scan_Log.txt"
start "" "C:\FA_Antivira\FAshortcutinstallerdesktop.bat"
echo Shutdown /s /t 10 > "C:\FA_Antivira\FApyHlp\\FAshutdown.bat"
echo Shutdown /r /t 10 > "C:\FA_Antivira\FApyHlp\FArestart.bat"
echo MsgBox "A FILE IN SYSTEM 32 WAS OPENED CREATED OR DELETED!", vbExclamation, "Warning" > "C:\FA_Antivira\FARWARNING.vbs"
echo MsgBox "SUSPICIUS FILE DETECTED!", vbExclamation, "Warning" > "C:\FA_Antivira\FAvbs\FAwaarnbat.vbs"
echo clicking shutdown will shutdown your pc in 10s and hitting restart will Restart your pc in 10s > "C:\FA_Antivira\FApyHlp\FAstartmenuinfo.txt"
echo start "" "C:\Program Files (x86)\Avira\Security\Avira.Spotlight.UI.Application.exe" > "C:\FA_Antivira\FApyHlp\FAAvira.bat"
echo start "" "C:\Program Files\AVAST Software\Avast\AvastUI.exe" > "C:\FA_Antivira\FApyHlp\FAAvast.bat"
echo start "" "C:\Program Files (x86)\G Data\InternetSecurity\AVKTray.exe" > "C:\FA_Antivira\FApyHlp\FAGData.bat"
echo start "" "C:\Program Files (x86)\Kaspersky Lab\Kaspersky Internet Security 20.0\avp.exe" > "C:\FA_Antivira\FApyHlp\FAKaspersky.bat"
echo start "" "C:\Program Files\Windows Defender\MsMpEng.exe" > "C:\FA_Antivira\FApyHlp\FAWindDef.bat"
echo start "" "C:\Program Files\Common Files\McAfee\Platform\McSvcHost" > "C:\FA_Antivira\FApyHlp\FAMcAfee.bat"
echo start "" "C:\Program Files\AVG\Antivirus\AVGUI.exe" > "C:\FA_Antivira\FApyHlp\FAAVG.bat"
echo MsgBox "Welcome To FA Antivira :D" > "C:\FA_Antivira\FAwlc.vbs"
echo taskkill /f /im cmd.exe > "C:\FA_Antivira\FAcmd.bat"
(
echo FA AntiVira
echo.
echo Installation Date:
echo %date%
echo.
echo Installation Time:
echo %time%
echo.
echo Installation Version:
echo %FAVersion%
echo.
echo Installation User:
echo %username%
echo.
echo Installation Key:
echo %random%%random%%random%
echo.
) > "C:\FA_Antivira\FASett\FAkey.txt"
(
echo @echo off
echo :start
echo color 0a
echo cls
echo echo Welcome %username% to the advanced Program Killer Cmd Center mase by the creator of FA AntiVira
echo echo.
echo echo Please Choose 1 of the following actions:
echo echo.
echo echo [Type 1 to spam kill a programm]
echo echo [Type 2 to spam aktivate my firewall]
echo echo [Type 3 to list my Prossesses]
echo echo [Type 4 to list my Prossesses and all my conections]
echo echo [Type 5 to distroy A File]
echo echo [Type 6 to list my Files]
echo echo [Type 7 to list my Hardware Info]
echo echo [Type 8 to list my System Info]
echo echo [Type 9 to list my Network Info]
echo echo [Type 10 to all my Sensitive Info]
echo echo [Type 11 to Scan for A Damaged System]
echo echo [Type 12 to Restart the System]
echo echo [Type 13 to Shutdown the System]
echo echo [Type 14 to Check and Repair File System Errors]
echo echo [Type 15 to Clean Temporary Files]
echo echo [Type 16 to Defragment the Hard Drive]
echo echo [Type 17 to Run Performance Monitoring and Diagnostics]
echo echo.
echo echo INFO Some Actions May Require Administrator
echo echo WARNING SOME OF THIS CAN CAUSE THE SYSTEM TO BE DAMAGED
echo set /p Actoin=
echo if /i %%Actoin%%==1 goto a1
echo if /i %%Actoin%%==2 goto a2
echo if /i %%Actoin%%==3 goto a3
echo if /i %%Actoin%%==4 goto a4
echo if /i %%Actoin%%==5 goto a5
echo if /i %%Actoin%%==6 goto a6
echo if /i %%Actoin%%==7 goto a7
echo if /i %%Actoin%%==8 goto a8
echo if /i %%Actoin%%==9 goto a9
echo if /i %%Actoin%%==10 goto a10
echo if /i %%Actoin%%==11 goto a11
echo if /i %%Actoin%%==12 goto a12
echo if /i %%Actoin%%==13 goto a13
echo if /i %%Actoin%%==14 goto a14
echo if /i %%Actoin%%==15 goto a15
echo if /i %%Actoin%%==16 goto a16
echo if /i %%Actoin%%==17 goto a17
echo :a1
echo tasklist
echo echo what program do you want to kill?
echo echo WARNING DONT END PROSESSES YOU DONT KNOW BECAUSE THEY COULD BE IMPORTANT
echo set /p Kill=
echo goto killloop
echo :killloop
echo color 04
echo taskkill /f /im %%Kill%%
echo echo Killed %%Kill%%
echo goto killloop
echo :a2
echo color 04
echo netsh firewall set opmode enable
echo netsh firewall set opmode mode=ENABLE
echo netsh advfirewall set currentprofile state on
echo netsh advfirewall set domainprofile state on
echo netsh advfirewall set privateprofile state on
echo netsh advfirewall set publicprofile state on
echo netsh advfirewall set allprofiles state on
echo cls
echo echo Firewall is aktivated
echo echo to end this close the file window
echo goto start
echo :a3
echo echo Prozesses:
echo tasklist
echo timeout /t 5 ^>nul
echo cls
echo goto a3
echo :a4
echo color 04
echo echo WARNING THIS PROGRAMM WILL LIST SENSITIVE INORMATION. MAKE SURE NOONE CAN SEE YOUR SCREEN
echo pause
echo echo LIST OF CONNECTIONS AND PROSSESSES: ^> "%USERPROFILE%\Desktop\FAproconectlist.txt"
echo echo. ^>^> "%USERPROFILE%\Desktop\FAproconectlist.txt"
echo echo. ^>^> "%USERPROFILE%\Desktop\FAproconectlist.txt"
echo echo Connections: ^>^> "%USERPROFILE%\Desktop\FAproconectlist.txt"
echo netstat -o ^>^> "%USERPROFILE%\Desktop\FAproconectlist.txt"
echo echo. ^>^> "%USERPROFILE%\Desktop\FAproconectlist.txt"
echo echo. ^>^> "%USERPROFILE%\Desktop\FAproconectlist.txt"
echo echo Prosesses: ^>^> "%USERPROFILE%\Desktop\FAproconectlist.txt"
echo tasklist ^>^> "%USERPROFILE%\Desktop\FAproconectlist.txt"
echo echo. ^>^> "%USERPROFILE%\Desktop\FAproconectlist.txt"
echo echo. ^>^> "%USERPROFILE%\Desktop\FAproconectlist.txt"
echo echo Not Responding Prossesses: ^>^> "%USERPROFILE%\Desktop\FAproconectlist.txt"
echo tasklist /APPS /FI "STATUS EQ NOT RESPONDING" ^>^> "%USERPROFILE%\Desktop\FAproconectlist.txt"
echo timeout /t 10 ^>nul
echo start /wait %USERPROFILE%\Desktop\FAproconectlist.txt
echo echo Press enter to UPDATE the infomation
echo pause
echo del "%USERPROFILE%\Desktop\FAproconectlist.txt"
echo goto a4
echo :a5
echo color 04
echo set /p filepath="Please Type In The Path Of The File You Want To Kill: "
echo for /L %%%%i in ^(1,1,30000^) do ^(
echo     echo This File Was Overwritten By FA AntiVira %%%%i Times ^> "%%filepath%%"
echo ^)
echo del /F /Q "%%filepath%%"
echo File Killed.
echo File Was Permanently Deleted And Overwritten 30000 Times
echo pause
echo goto start
echo :a6
echo color 0B
echo echo please type the file path of the folder you want to list the files in:
echo set /p filelist=
echo echo All Files And Folders In %%filelist%%:
echo timeout /t 2 ^>nul
echo cd %%filelist%%
echo timeout /t 3 ^>nul
echo echo.
echo dir /s
echo echo.
echo echo.
echo echo.
echo echo.
echo echo Press enter to go back to start
echo pause
echo goto start
echo :a7
echo echo WARNING THIS PROGRAMM WILL LIST POSSIBLY SENSITIVE INORMATION. MAKE SURE NOONE CAN SEE YOUR SCREEN
echo pause
echo echo HARDWARE INFO: ^> "%USERPROFILE%\Desktop\FAtemphdwinf.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAtemphdwinf.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAtemphdwinf.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAtemphdwinf.txt"
echo echo Diskspace:^>^> "%USERPROFILE%\Desktop\FAtemphdwinf.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAtemphdwinf.txt"
echo wmic diskdrive get size^>^> "%USERPROFILE%\Desktop\FAtemphdwinf.txt"
echo echo Bytes^>^> "%USERPROFILE%\Desktop\FAtemphdwinf.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAtemphdwinf.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAtemphdwinf.txt"
echo echo CPU:^>^> "%USERPROFILE%\Desktop\FAtemphdwinf.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAtemphdwinf.txt"
echo wmic cpu get name^>^> "%USERPROFILE%\Desktop\FAtemphdwinf.txt"
echo start /wait %USERPROFILE%\Desktop\FAtemphdwinf.txt
echo echo Press enter to UPDATE the infomation
echo pause
echo del "%USERPROFILE%\Desktop\FAtemphdwinf.txt"
echo goto a7
echo :a8
echo echo WARNING THIS PROGRAMM WILL LIST SENSITIVE INORMATION. MAKE SURE NOONE CAN SEE YOUR SCREEN
echo pause
echo echo SYSTEM INFO: ^> "%USERPROFILE%\Desktop\FAsysinf.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAsysinf.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAsysinf.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAsysinf.txt"
echo echo Username:^>^> "%USERPROFILE%\Desktop\FAsysinf.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAsysinf.txt"
echo echo %Username%^>^> "%USERPROFILE%\Desktop\FAsysinf.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAsysinf.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAsysinf.txt"
echo echo Time and Date:^>^>"%USERPROFILE%\Desktop\FAsysinf.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAsysinf.txt"
echo echo %Date% %Time%^>^> "%USERPROFILE%\Desktop\FAsysinf.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAsysinf.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAsysinf.txt"
echo echo OS Version:^>^> "%USERPROFILE%\Desktop\FAsysinf.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAsysinf.txt"
echo ver ^>^> "%USERPROFILE%\Desktop\FAsysinf.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAsysinf.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAsysinf.txt"
echo echo SystenInfo:^>^> "%USERPROFILE%\Desktop\FAsysinf.txt"
echo systeminfo ^>^> "%USERPROFILE%\Desktop\FAsysinf.txt"
echo start /wait %USERPROFILE%\Desktop\FAsysinf.txt
echo echo Press enter to UPDATE the infomation
echo pause
echo del "%USERPROFILE%\Desktop\FAsysinf.txt"
echo goto a8
echo :a9
echo echo WARNING THIS PROGRAMM WILL LIST SENSITIVE INORMATION. MAKE SURE NOONE CAN SEE YOUR SCREEN
echo pause
echo echo NETWORK INFO: ^> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo echo wlan Progiles:^>^> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo netsh wlan show profiles^>^> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo echo IP configeration:^>^> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo ipconfig ^>^> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo ipconfig ^| find /i "IPv4"^>^> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo echo CONNECTIONS:^>^> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo echo IP Adresses and Ports:^>^> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo netstat -an^>^> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo echo Higher Ports and Prossesses:^>^> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo netstat -anob^>^> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo echo All Conections:^>^> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo netstat -anob^>^> "%USERPROFILE%\Desktop\FAnetinf.txt"
echo start /wait %USERPROFILE%\Desktop\FAnetinf.txt
echo echo Press enter to UPDATE the infomation
echo pause
echo del "%USERPROFILE%\Desktop\FAnetinf.txt"
echo goto a9
echo :a10
echo echo WARNING THIS PROGRAMM WILL LIST SENSITIVE INORMATION. MAKE SURE NOONE CAN SEE YOUR SCREEN
echo pause
echo echo ALL SENSITIVE INFO: ^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo NETWORK INFO:^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo wlan Progiles:^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo netsh wlan show profiles^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo IP configeration:^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo ipconfig ^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo ipconfig ^| find /i "IPv4"^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo CONNECTIONS:^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo IP Adresses and Ports:^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo netstat -an^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo Higher Ports and Prossesses:^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo netstat -anob^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo All Conections:^>^> ""%USERPROFILE%\Desktop\FAallinfo.txt"
echo netstat -anob^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo SYSTEM INFO:^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo Username:^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo %Username%^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo Time and Date:^>^>"%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo %%Date%% %%Time%%^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo OS Version:^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo ver ^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo SystenInfo:^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo systeminfo ^>^> "%USERPROFILE%\Desktop\FAallinfo.txt" 
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo HARDWARE INFO:^>^> "%USERPROFILE%\Desktop\FAallinfo.txt
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo Diskspace:^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo wmic diskdrive get size^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo Bytes^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo CPU:^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo echo.^>^>"%USERPROFILE%\Desktop\FAallinfo.txt"
echo wmic cpu get name^>^> "%USERPROFILE%\Desktop\FAallinfo.txt"
echo start /wait %USERPROFILE%\Desktop\FAallinfo.txt
echo echo Press enter to UPDATE the infomation
echo pause
echo del "%USERPROFILE%\Desktop\FAallinfo.txt"
echo goto a10
echo :11
echo echo WARNING THIS CAN HARM THE SYSTEM AND CAN TAKE UP TO 2H AND U CANT TURN IT OFF
echo echo press any key to start scanning and repairing
echo pause
echo echo start scanning...
echo sfc /scannow
echo pause
echo goto start
echo :12
echo echo press any key to Restart your device
echo pause
echo Shutdown /r /t 10
echo :13
echo echo press any key to Shutdown your device
echo pause
echo Shutdown /s /t 10
echo :14
echo echo WARNING THIS CAN HARM THE SYSTEM AND CAN TAKE UP TO 2H AND U CANT TURN IT OFF
echo echo press any key to start scanning and repairing
echo pause
echo echo start scanning ...
echo chkdsk /f
echo pause
echo goto start
echo :15
echo echo WARNING THIS CAN HARM THE SYSTEM AND CAN TAKE UP TO 2H AND U CANT TURN IT OFF
echo echo press any key to start cleaning
echo pause
echo cleanmgr
echo pause
echo goto start
echo :16
echo echo WARNING THIS CAN HARM THE SYSTEM AND CAN TAKE UP TO 2H AND U CANT TURN IT OFF
echo echo press any key to start cleaning
echo pause
echo defrag
echo pause
echo goto start
echo :17
echo echo WARNING THIS CAN HARM THE SYSTEM AND CAN TAKE UP TO 2H AND U CANT TURN IT OFF
echo echo press any key to start cleaning
echo pause
echo perfmon /report
echo pause
echo goto start
) > "C:\FA_Antivira\FAadvtool.bat"
(
echo @echo off
echo setlocal
echo color 0E
echo :0
echo cls
echo set "QuarantineDir=C:\FA_Antivira\FAquar"
echo if not exist "%%QuarantineDir%%" ^(
echo     echo The Quarantine Cant Load or does not ecsist.
echo	 echo try reinstalling FA AntiVira to fix the problem
echo     exit /b 1
echo ^)
echo echo FA AntiVira Quarantine
echo echo.
echo for %%%%f in ^("%%QuarantineDir%%\*"^) do ^(
echo     echo -------------------------------
echo 	echo.
echo     echo %%%%~nxf
echo 	echo.
echo ^)
echo echo -------------------------------
echo endlocal
echo pause
echo echo please choose an option [1 add to Quarantine / 2 Restore From Quarantine / 3 Delete File In Quarantine]
echo echo.
echo set /p Userchoice="You: "
echo if /i %%Userchoice%%==1 goto 1
echo if /i %%Userchoice%%==2 goto 2
echo if /i %%Userchoice%%==3 goto 3
echo :1
echo echo please type in the path of the file that you want to add to Quarantine
echo set /p path1="You: "
echo move /y "%%path1%%" "C:\FA_Antivira\FAquar"
echo pause
echo goto 0
echo :2
echo cd C:\FA_Antivira\FAquar
echo echo please type in the file name you want to restore
echo set /p file1="You: "
echo echo please type in the folder path you want to put the file into
echo set /p path2="You: "
echo move /y "%%file1%%" "%%path2%%"
echo pause
echo goto 0
echo :3
echo cd C:\FA_Antivira\FAquar
echo echo please type in the file name you want to delete
echo set /p file2="You: "
echo del /F /Q "%%file2%%"
echo pause
echo goto 0
) > "C:\FA_Antivira\FASett\FApuar.bat"
(
echo $downloadDir = "$env:%USERPROFILE%\Downloads"
echo if ^(Test-Path $downloadDir -PathType Container^) {
echo     $watcher = New-Object System.IO.FileSystemWatcher
echo     $watcher.Path = $downloadDir
echo     $watcher.Filter = "*.*"
echo     $watcher.IncludeSubdirectories = $false
echo     $watcher.EnableRaisingEvents = $true
echo     $onCreated = {
echo         $file = $Event.SourceEventArgs.Name
echo         $path = $Event.SourceEventArgs.FullPath
echo         Write-Host "New File Found: $file"
echo 		Start-Process "C:\FA_Antivira\FASystemScan.bat"
echo     }
echo     Register-ObjectEvent -InputObject $watcher -EventName Created -SourceIdentifier FileCreated -Action $onCreated
echo     Write-Host "Press controll + c to end the real time protection"
echo     while ^($true^) {
echo         Start-Sleep -Seconds 1
echo     }
echo } else {
echo     Write-Host "Error"
echo }
) > "C:\FA_Antivira\FAprotection\FAdownprotection.ps1"
timeout /t 1 >nul
echo powershell -NoProfile -ExecutionPolicy Bypass -File "C:\FA_Antivira\FAprotection\FAdownprotection.ps1" > "C:\FA_Antivira\FAprotection\FAdownprotection.bat"
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('%url%', 'C:\FA_Antivira\fadownload.zip')"
set "source_zip=C:\FA_Antivira\fadownload.zip"
set "extracted_csv=C:\FA_Antivira\full.csv"
set "destination_txt=C:\FA_Antivira\FAMalHashDatabase.txt"
powershell -command "Expand-Archive -Path '%source_zip%' -DestinationPath 'C:\FA_Antivira'"
rename "%extracted_csv%" "FAMalHashDatabase.txt"
del "%source_zip%"
cls
echo Progress: [----------] 0% 
timeout /t 1 >nul
cls
echo Progress: [=---------] 10% 
timeout /t 1 >nul
cls
echo Progress: [==--------] 20% 
timeout /t 1 >nul
cls
echo Progress: [===-------] 30% 
timeout /t 1 >nul
cls
echo Progress: [====------] 40% 
timeout /t 1 >nul
cls
echo Progress: [=====-----] 50% 
timeout /t 1 >nul
cls
echo Progress: [======----] 60% 
timeout /t 1 >nul
cls
echo Progress: [=======---] 70% 
timeout /t 1 >nul
cls
echo Progress: [========--] 80% 
timeout /t 1 >nul
cls
echo Progress: [=========-] 90% 
timeout /t 1 >nul
cls
echo Progress: [==========] 100% 
timeout /t 1 >nul
cls
echo download complere
echo have a good day
start "" "C:\FA_Antivira\FAwlc.vbs"
timeout /t 60 >nul
goto Start
:dontinstall
echo instalation cancled
timeout /t 60 >nul
goto start
:TOS
color 0a
echo This Programm will be allowed to create files and folders on your pc
echo This programm will be allowed to store and collect information that will be just stored on your device
echo The Programm may cause tiny damages on your device for example by using it wrong. but it will warn you.
echo You will also have to accept the tos of Malware bazaar 
start https://fabischau1.github.io/FAAntivira/TOS.html
pause
cls
goto start
