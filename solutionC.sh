#!/bin/bash

rm -rf LevelC
unzip LevelC.zip
cd remote
rm -rf LevelC
unzip LevelC
cd ..


# 1) Dowiesz się:
# - jak dodać zdalne repozytorium
# - jak dodać wypchnąć zmiany do znalnego repozytorium
cd LevelC
git remote add origin ../remote/LevelC
git push -u origin master
cd ..

# 2) Dowiesz się:
# - jak sklonować się ze zdalnego repozytorium
git clone remote/LevelC LevelCPrim
cd LevelCPrim
sed -i '' 's/testApp/mainTest/g' src/test/java/pl/klkl/AppTest.java
git commit -a -m "Other developer pushed changes"
git push
cd ..

# 3) Dowiesz się:
# - Jak pobrać zmiany ze zdalnego repozytorium
# - Jak zmergować się ze zdalnym repozytorium
cd LevelC
git fetch origin
# pokaz w jakims guju co sie stalo
git rebase origin/master