#!/bin/bash

rm -rf LevelB
unzip LevelB.zip
cd LevelB
# 1) Dowiesz się:
# - co to jest branch
# - jak utworzyć branch
# - jak skasować branch, który jest zmergowany
git branch NewFeature
git branch
git branch -d NewFeature

# 2) Dowiesz się:
# - jak przełączyć się między branchami
# - jak utworzyć branch i od razu się na niego przełączyć
git branch NewFeature
git checkout NewFeature
git checkout master
git branch -d NewFeature
git checkout -b NewFeature

# 3) Create some commits
sed -i '' 's/testApp/mainTest/g' src/test/java/pl/klkl/AppTest.java
git commit -a -m "Change in feature branch"
git checkout master
sed -i '' 's/World/GIT/g' src/main/java/pl/klkl/App.java
git commit -a -m "Change in master branch"


# 4) Dowiesz się:
# - co to znaczy mergowanie
# - jak zmergować mergować branch
git merge NewFeature
git reset --hard HEAD~1


# 5) Dowiesz się:
# - co to znaczy rebasowanie
# - jak zrebasować branch
git rebase NewFeature
