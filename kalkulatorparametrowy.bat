@echo off
IF "%1"=="" (
IF "%2" =="" (
IF "%3" =="" (
echo Brak parametrow wejsciowych
goto koniec
)
)
)
IF "%2" =="" (
IF "%3" =="" (
echo Brak operatora
goto koniec
)
)
IF "%3" =="" (
echo Brak drugiej liczby
goto koniec
)
IF "%2" =="/" (
IF "%3" =="0" (
echo Nie mozna dzielic przez 0
goto koniec
)
)
set /a wynik=%1%2%3
echo %wynik%
:koniec
pause