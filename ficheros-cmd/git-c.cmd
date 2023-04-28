echo on
del /q /A:H .git
set comentario=%1%
if [%1]==[] (set comentario=Envio)
echo %comentario%
call git init
pause
call git add .
pause
call git commit -m "%comentario%"
pause
rem call git branch -m master main
pause
call git remote add origin https://github.com/Jose-Garcia-Fernadez/pec1-herramientas1.git

pause
call git push --force origin master
pause