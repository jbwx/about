:s
cls
@echo off
setlocal enabledelayedexpansion
set m=O
set cp=1
set n=0
:b
set /a n=%n%+1
set a%n%=л
set /a i=%n% %% 3
if %i%==0 echo ллл
if %n%==9 goto c
goto b
:c
echo It's P%cp%'s choice:
choice /c 123456789
set p=%errorlevel%
if !a%p%!==л (set a%p%=%m%) else goto c
cls
echo %a1%%a2%%a3%
echo %a4%%a5%%a6%
echo %a7%%a8%%a9%

call :l 1, 2, 3
call :l 4, 5, 6
call :l 7, 8, 9
call :l 1, 4, 7
call :l 2, 5, 8
call :l 3, 6, 9
call :l 1, 5, 9
call :l 7, 5, 3

if %cp%==1 set cp=2& set m=X& goto c
if %cp%==2 set cp=1& set m=O
goto c

:w
echo P%cp% wins.
pause
goto s

:l
if !a%~1!==%m% if !a%~2!==%m% if !a%~3!==%m% goto w
goto :eof