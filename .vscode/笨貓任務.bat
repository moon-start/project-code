@echo off
chcp 65001 > nul 

(for /f "tokens=2" %%a in ('tasklist /fi "imagename eq cmd.exe"') do @set "PID=%%a" ) && echo %PID%
echo config . %PID%



@REM 設定值:
@REM "shell":"powershell -Command \"Start-Process -Verb RunAs -FilePath cmd.exe -ArgumentList '/c %MDD% && %ML% & %ML2%';\"",
@REM "MDD":"del /q ${env:VS}\\settings\\User\\*.*",
@REM "VS":"C:\\Users\\moon-\\AppData\\Local\\Microsoft\\WindowsApps\\VSData",
@REM "ML":"mklink ${env:VS}\\settings\\User\\keybindings.json         ${fileDirname}\\keybindings.json ",
@REM "ML2":"mklink ${env:VS}\\settings\\User\\settings.json           ${fileDirname}\\settings.json ",
    
@REM 把.vscode的.json  連結至%VS%
%MDD%  
C:\\Windows\\System32\\cmd.exe  /c %shell%


curl localhost >nul 2>nul || npx vite --port 80 --no-open 
