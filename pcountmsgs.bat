rem Use PowerShell to compute the number of messages based on
rem the TOC file sizes, which doesn't count deleted messages

Powershell.exe -ExecutionPolicy Bypass -File "pcountmsgs.ps1"
pause
