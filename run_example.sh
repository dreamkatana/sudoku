#!/bin/bash

# Script de exemplo para executar o jogo com configurações pré-definidas
# Para Windows, use: java br.com.dio.Main "argumentos..."

echo "Compilando o projeto..."
javac -d . src/br/com/dio/Main.java src/br/com/dio/model/*.java src/br/com/dio/util/*.java

echo "Executando o jogo com algumas posições pré-configuradas..."

# Exemplo de configuração:
# Formato: "linha,coluna;valor,fixo"
# linha,coluna: coordenadas (0-8)
# valor: número do sudoku (1-9, ou 0 para vazio)
# fixo: true/false (se pode ser alterado pelo jogador)

java br.com.dio.Main \
  "0,0;5,true" \
  "0,1;3,false" \
  "0,2;0,false" \
  "1,0;6,false" \
  "1,1;0,false" \
  "1,2;0,false" \
  "2,0;0,false" \
  "2,1;9,true" \
  "2,2;8,false"

# Este exemplo criará um tabuleiro com:
# - Posição [0,0]: número 5 (fixo)
# - Posição [0,1]: número 3 (editável)  
# - Posição [1,1]: número 9 (fixo)
# - Outras posições vazias (editáveis)
