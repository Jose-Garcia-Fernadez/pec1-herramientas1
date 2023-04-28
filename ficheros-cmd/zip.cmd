rem https:\\nvdaes.github.io\GitHub-CLI\#:~:text=GitHub%20CLI%20es%20una%20herramienta%20de%20l%C3%ADnea%20de,desde%20la%20l%C3%ADnea%20de%20comandos%20de%20tu%20computadora.
set c=%1%
if "%1%"=="" ( set c=prueba)
rem call npm install --save-dev npm-build-zip
echo npm run npm-build-zip --source=origen --destination=d:\4UOC\99COPIA\PEC1\%c%.zip

echo %c%
