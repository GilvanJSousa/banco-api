@echo off
echo Verificando saldos apos transferencia...
echo.

curl -X GET http://localhost:3000/contas -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY4NjZiNzJkYmIzM2NjMzBmMDQxM2I3NCIsInVzZXJuYW1lIjoiYWRtaW4iLCJpYXQiOjE3NTE1NjI3NzYsImV4cCI6MTc1MTU2NjM3Nn0.G1OuCcX_Ax3mRgTlRaDYRL3G_JbjxQVyUq8MwkTtNpc"

echo.
echo Teste concluido!
pause 