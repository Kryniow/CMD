@echo off
if "%1" == "" (goto wiadomosc)
if not exist %1 (goto wiadomosc2)
FOR /F "tokens=2,3 delims=." %%i in (%1) do @NET USER "%%i" %%j /add>nul
FOR /F "tokens=2,3 delims=." %%i in (lista.txt) do ECHO Tworzony jest u¿ytkownik o nazwie %%i
goto koniec
:wiadomosc
ECHO Nie podano parametru!
goto koniec
:wiadomosc2
ECHO Podany parametr jest bledny!
goto koniec
:koniec
pause 