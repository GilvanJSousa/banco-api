@echo off
echo Testando transferencia com ObjectIds corretos...
echo.

curl -X POST http://localhost:3000/transferencias ^
-H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY4NjZiNzJkYmIzM2NjMzBmMDQxM2I3NCIsInVzZXJuYW1lIjoiYWRtaW4iLCJpYXQiOjE3NTE1NjI3NzYsImV4cCI6MTc1MTU2NjM3Nn0.G1OuCcX_Ax3mRgTlRaDYRL3G_JbjxQVyUq8MwkTtNpc" ^
-H "Content-Type: application/json" ^
-d "{\"contaOrigem\": \"6866b72dbb33cc30f0413b6c\", \"contaDestino\": \"6866b72dbb33cc30f0413b6e\", \"valor\": 50.00, \"token\": \"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY4NjZiNzJkYmIzM2NjMzBmMDQxM2I3NCIsInVzZXJuYW1lIjoiYWRtaW4iLCJpYXQiOjE3NTE1NjI3NzYsImV4cCI6MTc1MTU2NjM3Nn0.G1OuCcX_Ax3mRgTlRaDYRL3G_JbjxQVyUq8MwkTtNpc\"}"

echo.
echo Teste concluido!
pause 