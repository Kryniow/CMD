@echo off
if "%1" == "" (goto wiadomosc)
if not exist %1 (goto wiadomosc2)
FOR /F "tokens=2,3 delims=." %%i in (%1) do @NET USERS "%%i" %%j /add>nul
FOR /F "tokens=2,3 delims=." %%i in (lista.txt) do ECHO Tworzony jest uzytkownik %%i
goto koniec
:wiadomosc
echo Brak parametru - podaj nazwe pliku zawierajacego liste uzytkownikow
goto koniec
:wiadomosc2
echo Podany parametr wejsciowy jest bledny!
goto koniec
:koniec
pause
