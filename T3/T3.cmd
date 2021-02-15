:s
set s= set 
%s%e=echo 
%s%g=goto &%s%v=call :l &@%e%off&cls&setlocal enabledelayedexpansion&%s%m=X&%s%p=P1&%s%n=0&%s%t=0
:b
%s%/a n=%n%+1
%s%a%n%=Û&if %n%==9 %g%c
%g%b
:c
%e%%a1%%a2%%a3%&%e%%a4%%a5%%a6%
choice /c 123456789 /m %a7%%a8%%a9%%p%:
%s%k=%errorlevel%
cls& if !a%k%!==Û (%s%a%k%=%m%)else %g%c
%s%/a t=%t%+1&%v%1,2,3&%v%4,5,6&%v%7,8,9&%v%1,4,7&%v%2,5,8&%v%3,6,9&%v%1,5,9&%v%7,5,3
if %t%==9%s%p=Nobody&%g%w
if %p%==P1%s%p=P2&%s%m=O& %g%c
if %p%==P2%s%p=P1&%s%m=X
%g%c
:w
%e%%p% wins.&pause& %g%s
:l
if !a%~1!==%m% if !a%~2!==%m% if !a%~3!==%m% %g%w