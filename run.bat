@echo off
REM Simple script to compile and run the game

echo Compiling the Sudoku project...
javac -d . src/br/com/dio/Main.java src/br/com/dio/model/*.java src/br/com/dio/util/*.java

if %errorlevel% neq 0 (
    echo Compilation error! Please check the code.
    pause
    exit /b 1
)

echo.
echo Compilation successful! Starting the game...
echo.

java br.com.dio.Main

pause
