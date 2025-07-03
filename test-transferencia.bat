@echo off
echo Testando transferencia com token atual...
echo.

curl -X POST http://localhost:3000/transferencias ^
-H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY4NjZiNzJkYmIzM2NjMzBmMDQxM2I3NCIsInVzZXJuYW1lIjoiYWRtaW4iLCJpYXQiOjE3NTE1NjI3NzYsImV4cCI6MTc1MTU2NjM3Nn0.G1OuCcX_Ax3mRgTlRaDYRL3G_JbjxQVyUq8MwkTtNpc" ^
-H "Content-Type: application/json" ^
-d "{\"contaOrigem\": 1, \"contaDestino\": 3, \"valor\": 50.00, \"token\": \"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY4NjZiNzJkYmIzM2NjMzBmMDQxM2I3NCIsInVzZXJuYW1lIjoiYWRtaW4iLCJpYXQiOjE3NTE1NjI3NzYsImV4cCI6MTc1MTU2NjM3Nn0.G1OuCcX_Ax3mRgTlRaDYRL3G_JbjxQVyUq8MwkTtNpc\"}"

echo.
echo Teste concluido!
pause 