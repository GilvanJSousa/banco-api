@echo off
echo Obtendo novo token JWT...
echo.

curl -X POST http://localhost:3000/login -H "Content-Type: application/json" -d "{\"username\": \"admin\", \"senha\": \"admin123\"}"

echo.
echo Teste concluido!
pause 