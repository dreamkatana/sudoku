@echo off
REM Script para Windows - Executar o jogo com configurações pré-definidas

echo Compilando o projeto...
javac -d . src/br/com/dio/Main.java src/br/com/dio/model/*.java src/br/com/dio/util/*.java

if %errorlevel% neq 0 (
    echo Erro na compilacao!
    pause
    exit /b 1
)

echo.
echo Executando o jogo com algumas posicoes pre-configuradas...
echo.

REM Exemplo de configuração:
REM Formato: "linha,coluna;valor,fixo"
REM linha,coluna: coordenadas (0-8)
REM valor: número do sudoku (1-9, ou 0 para vazio)
REM fixo: true/false (se pode ser alterado pelo jogador)

java br.com.dio.Main "0,0;5,true" "0,1;3,false" "0,2;0,false" "1,0;6,false" "1,1;0,false" "1,2;0,false" "2,0;0,false" "2,1;9,true" "2,2;8,false"

pause
