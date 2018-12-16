@echo off
:start
echo Podaj operacje
echo + - dodawanie
echo - - odejmowanie
echo * - mnozenie
echo / - dzielnie
set /P operacja="Operacja>"

echo Podaj liczbe: 
set /p liczba1="Liczba1>"

echo Podaj druga liczbe:
set /p liczba2="Liczba2>"

if "%operacja%"=="+" set /A Result=%liczba1%+%liczba2%
if "%operacja%"=="-" set /A Result=%liczba1%-%liczba2%
if "%operacja%"=="*" set /A Result=%liczba1%*%liczba2%
if "%operacja%"=="/" goto dzielenie

:koniec
echo Wynik operacji : %Result%
exit /B 0

:dzielenie
if "%liczba2%"=="0" goto przezZero
set /A Result=%liczba1%/%liczba2%
goto koniec

:przezZero
echo Nie dziel przez zero
goto start