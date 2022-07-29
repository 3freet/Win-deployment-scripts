REM Load the default user registry hive
reg load "hku\default" "C:\Users\Default\NTUSER.DAT"

REM reduce feeds updates
reg add hku\default\Software\Microsoft\Windows\CurrentVersion\Feeds /v ShellFeedsTaskbarContentUpdateMode /t REG_DWORD /d 1 /f

REM Disable feed open on hover
reg add hku\default\SOFTWARE\Microsoft\Windows\CurrentVersion\Feeds /v ShellFeedsTaskbarOpenOnHover /t REG_DWORD /d 0 /f

REM Unload the default user registry hive
reg unload "hku\default"
