@echo off
:: Cambia al directorio del primer programa
cd /d "C:\Users\Admin\Desktop\Helbreth Cursed\Nucleo"
start "Nucleo" "Nucleo.exe"

:: Cambia al directorio del segundo programa
cd /d "C:\Users\Admin\Desktop\Helbreth Cursed\MapServer"
start "MapServer" "MapServer.exe"

:: Cambia al directorio del tercer programa
cd /d "C:\Users\Admin\Desktop\Helbreth Cursed\MapServer"
start "ICMPServer" "ICMPServer.exe"

:: Fin del archivo BAT
exit