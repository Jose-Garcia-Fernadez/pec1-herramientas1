cls
rem funciona desde el disco fisico no desde el disco logico
set disco=z
set directorio ="%cd%"

rem rem  *** eliminar red %disco% y
net use /delete %disco%:

rem rem  *** eliminar %disco% logico y
subst %disco%: /D

rem rem  *** crear %disco% logico y
subst %disco%: "%cd%"

rem rem  *** ir a %disco% logico y
%disco%:
rem call "C:\Users\renfe\AppData\Local\Programs\Microsoft VS Code\Code.exe" "y:\"
%disco%:
cmd
dir

