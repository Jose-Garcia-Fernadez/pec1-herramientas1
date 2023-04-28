echo on
set comentario=%1%
if [%1]==[] (set comentario=Envio)
echo %comentario%
rem call npm run sp
echo ejecuta parcel produccion en Z
pause
z:
pause
call cd destino
pause
call git init
pause
call git add .
pause
call git commit -m "%comentario%"
pause
call git branch -m master main
pause
call git remote add origin https://github.com/Jose-Garcia-Fernadez/destino.git
pause
call git push --force origin main
cd ..
c:
cd \4UOC\PEC1\
pause
rem build