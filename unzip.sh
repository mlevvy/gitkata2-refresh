#!/bin/bash

#Przygotowanie
rm -rf LevelA
rm -rf LevelB
rm -rf LevelC
unzip LevelA.zip
unzip LevelB.zip
unzip LevelC.zip
cd remote
rm -rf LevelC
unzip LevelC.zip
cd ..