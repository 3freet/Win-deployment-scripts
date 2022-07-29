REM Load the default user registry hive
reg load "hku\default" "C:\Users\Default\NTUSER.DAT"

REM Set the taskbar Search option to "Hidden"
reg add hku\default\Software\Microsoft\Windows\CurrentVersion\Search /v SearchboxTaskbarMode /t REG_DWORD /d 1 /f

REM Disable cortana button
reg add hku\default\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v ShowCortanaButton /t REG_DWORD /d 0 /f

REM Unload the default user registry hive
reg unload "hku\default"
