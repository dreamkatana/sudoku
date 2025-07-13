@echo off
REM Script for Windows - Run the game with predefined configurations

echo Compiling the project...
javac -d . src/br/com/dio/Main.java src/br/com/dio/model/*.java src/br/com/dio/util/*.java

if %errorlevel% neq 0 (
    echo Compilation error!
    pause
    exit /b 1
)

echo.
echo Running the game with some predefined positions...
echo.

REM Configuration example:
REM Format: "row,column;value,fixed"
REM row,column: coordinates (0-8)
REM value: sudoku number (1-9, or 0 for empty)
REM fixed: true/false (if it can be changed by player)

java br.com.dio.Main "0,0;5,true" "0,1;3,false" "0,2;0,false" "1,0;6,false" "1,1;0,false" "1,2;0,false" "2,0;0,false" "2,1;9,true" "2,2;8,false"

pause
