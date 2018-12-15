@echo off
set /a proba=1
set /a odpowiedz=%random%%%100+1
echo Podaj liczbe
:start
set /p odpowiedzGracza=
if %odpowiedzGracza% GTR %odpowiedz% ECHO MNIEJ!
if %odpowiedzGracza% LSS %odpowiedz% ECHO WIECEJ!
if %odpowiedzGracza%==%odpowiedz% goto EQUAL
set /a proba=%proba%+1
if %proba% GTR 6 goto koniecprzegrales
goto start
:EQUAL
echo BRAWO! Wygrales po %proba% probach! Odkadles liczbe  ktora to byla %odpowiedz%
pause
exit /B 1
:koniecprzegrales
echo PRZEGRALES! Chodzilo o liczbe %odpowiedz%
pause
exit /B 0