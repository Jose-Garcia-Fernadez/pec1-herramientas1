set origen=%cd%\
set exe=%origen%ficheros-cmd\EXE\7zr.exe
set destino=d:\4UOC\0000COPIAS-SEGURIDAD\7ZR\

set fecha=%1%


del /q  "%destino%*.*"
copy "%origen%*.*"               "%destino%"
copy "%origen%ficheros-cmd\*.*"  "%destino%"
copy "%origen%src\11-scss\*.*"   "%destino%"
copy "%origen%src\12-js\*.*"     "%destino%
copy "%origen%fotos\*.*"         "%destino%

rem comprimir 
set destinozip1=d:\4UOC\0000COPIAS-SEGURIDAD\COPIAS7ZR\
set destinozip2=c:\4UOC\copias\COPIAS7ZR\
set destinozip3=e:\4UOC\0000COPIAS-SEGURIDAD\COPIAS7ZR\
set origen1=%destino%


set fichero=%destinozip1%copia%fecha%-npm.zip
set comando="%exe%" a "%fichero%" "%origen1%"
%comando%

set fichero=%destinozip2%copia%fecha%-npm.zip
set comando="%exe%" a "%fichero%" "%origen1%"
%comando%

set fichero=%destinozip3%copia%fecha%-npm.zip
set comando="%exe%" a "%fichero%" "%origen1%"
%comando%



