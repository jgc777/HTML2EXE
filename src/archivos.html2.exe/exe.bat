@echo off
powershell "start cmd.exe -Args \"/q /c "title HTML host && cd archivos.html2.exe && 7za x h2e.zip && del /q h2e.zip && cd archivos.html2.exe && cls && echo HTML viewer is running. && echo Close the program using it to automaticaly exit. && start /max /wait nw.exe && cd .. && cd .. && rmdir /s /q archivos.html2.exe && exit"\" -WindowStyle Hidden"
exit