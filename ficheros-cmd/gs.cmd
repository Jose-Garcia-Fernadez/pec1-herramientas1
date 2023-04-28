rem https://nvdaes.github.io/GitHub-CLI/#:~:text=GitHub%20CLI%20es%20una%20herramienta%20de%20l%C3%ADnea%20de,desde%20la%20l%C3%ADnea%20de%20comandos%20de%20tu%20computadora.
set c=%1%
if "%1%"=="" ( set c="Prueba")
git add .
git commit -m %c%
rem la primera vez git push --set-upstream https://github.com/Jose-Garcia-Fernadez/PEC1.git master
git push https://github.com/Jose-Garcia-Fernadez/PEC1.git
echo %c