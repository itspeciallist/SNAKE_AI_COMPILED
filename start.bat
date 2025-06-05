@echo off
color 0a
title neuralsnake
cls

:main
cls
echo 1. start learning
echo 2. start play
echo 3. import save
echo 4. remove saves
echo 5. exit
set/p startplay=Input Option:

if "%startplay%"=="1" goto startlearn
if "%startplay%"=="2" goto startplay
if "%startplay%"=="3" goto importsave
if "%startplay%"=="4" goto removesaves

:startlearn
start fastestlearnsave.exe
cls
goto :main

:startplay
pushd NeuralSnake
start neuralsnake.exe
popd
cls
goto main

:importsave
move best_snake_ai.pkl neuralsnake.pkl
move neuralsnake.pkl NeuralSnake
goto main

:removesaves
del best_snake_ai.pkl
pushd NeuralSnake
del neuralsnake.pkl
popd
goto main