@echo off
echo Obtendo contas e seus IDs...
echo.

curl -X GET http://localhost:3000/contas

echo.
echo Teste concluido!
pause 