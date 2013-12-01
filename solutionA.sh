#!/bin/bash

rm -rf LevelA
unzip LevelA.zip
cd LevelA
# 1) Dowiesz się:
# - jak zainicjalizować repozytorium 
git init

# 2) Dowiesz się:
# - czym różni się indeks(✚1) od poczekalni (●1) od plików nie dodanych do indeksu (...)
# - jak dodać nowe pliki do indeksu/poczekalni
# - jak skomitować pliki w poczekalni
Pokaz zawartość git w tree
git add .
git commit -m "Initial commit"

# 3) Dowiesz się:
# - co tak naprawdę się dzieje, gdy dodajemy jakiś plik
echo '<!-- This pom.xml looks OK-->' >> pom.xml
git add pom.xml
echo '<!-- This pom.xml looks very OK-->' >> pom.xml
git status
git add pom.xml

# 4) Dowiesz się:
# - o skrótach do git commit
# - opowiem też o aliasach
git commit -a -m "Updated version"

# 5) Dowiesz się:
# - co to jest ammendowanie
echo 'README plis' >> README.md
echo '<!-- Maybe we should remove some dependencies ? -->' >> pom.xml
git add README.md
git commit --amend -m "Ammend"

# 6) Dowiesz się:
# - jak przenieść plik z poczekalni do indeksu
echo '<!-- No. We should keep all dependencies -->' >> pom.xml
git add pom.xml
git status
git reset pom.xml

# 7) Dowiesz się:
# - jak cofnąć zmiany, które są w indeksie
git checkout -- pom.xml