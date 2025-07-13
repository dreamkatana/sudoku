#!/bin/bash

# Example script to run the game with predefined configurations
# For Windows, use: java br.com.dio.Main "arguments..."

echo "Compiling the project..."
javac -d . src/br/com/dio/Main.java src/br/com/dio/model/*.java src/br/com/dio/util/*.java

echo "Running the game with some predefined positions..."

# Configuration example:
# Format: "row,column;value,fixed"
# row,column: coordinates (0-8)
# value: sudoku number (1-9, or 0 for empty)
# fixed: true/false (if it can be changed by player)

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

# This example will create a board with:
# - Position [0,0]: number 5 (fixed)
# - Position [0,1]: number 3 (editable)  
# - Position [1,1]: number 9 (fixed)
# - Other positions empty (editable)
