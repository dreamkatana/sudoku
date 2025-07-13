@echo off
REM Script simples para compilar e executar o jogo

echo Compilando o projeto Sudoku...
javac -d . src/br/com/dio/Main.java src/br/com/dio/model/*.java src/br/com/dio/util/*.java

if %errorlevel% neq 0 (
    echo Erro na compilacao! Verifique o codigo.
    pause
    exit /b 1
)

echo.
echo Compilacao bem-sucedida! Iniciando o jogo...
echo.

java br.com.dio.Main

pause
