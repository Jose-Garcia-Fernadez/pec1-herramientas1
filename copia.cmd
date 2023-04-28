set origen=%cd%\
set exe=%origen%ficheros-cmd\EXE\7zr.exe
set destino=d:\4UOC\0000COPIAS-SEGURIDAD\7ZR\


set f=_%DATE:~6,4%%DATE:~3,2%%DATE:~0,2%_%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%
set fecha=%1%
if [%1]==[] (set fecha=%f%)
echo %fecha%
cls
del /q  "%destino%*.*"
copy "%origen%*.*"               "%destino%"

copy "%origen%ficheros-cmd\*.*"  "%destino%"
copy "%origen%src\11-scss\*.*"   "%destino%"
copy "%origen%src\12-js\*.*"     "%destino%
copy "%origen%src\fotos\*.*"         "%destino%
copy "%origen%src\*.*"               "%destino%"

rem comprimir 
set destinozip1=d:\4UOC\0000COPIAS-SEGURIDAD\COPIAS7ZR\
set destinozip2=c:\4UOC\copias\COPIAS7ZR\
set destinozip3=e:\4UOC\0000COPIAS-SEGURIDAD\COPIAS7ZR\
set origen1=%destino%


set fichero=%destinozip1%copia%fecha%.zip
set comando="%exe%" a "%fichero%" "%origen1%"
%comando%

set fichero=%destinozip2%copia%fecha%.zip
set comando="%exe%" a "%fichero%" "%origen1%"
%comando%

set fichero=%destinozip3%copia%fecha%.zip
set comando="%exe%" a "%fichero%" "%origen1%"
%comando%



