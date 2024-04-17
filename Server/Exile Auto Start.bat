@echo off
color 0a
title Exile Monitor

:: Set the directory path as a variable
set "server_directory=C:\Users\max97\Documents\VSCODE\DrHirschs-exile-server\Server"

:Serverstart
echo Launching Server
cd /d "%server_directory%"
echo Exile Server Monitor... Active !
start "Arma3" /min /wait arma3server.exe -mod=@exilemod;Kart;Mark;Heli; -servermod=@exileserver; -config="%server_directory%\@ExileServer\config.cfg" -port=2302 -profiles=SC -cfg="%server_directory%\@ExileServer\basic.cfg" -name=SC -autoinit
ping 127.0.0.1 -n 15 >NUL
echo Exile Server Shutdown ... Restarting!
ping 127.0.0.1 -n 5 >NUL
cls
goto Serverstart
