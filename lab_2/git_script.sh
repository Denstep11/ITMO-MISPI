#!/bin/sh
rm -rf ~/MSP/git
cd ~/MSP
mkdir git
cd git

git init
git config --local user.name "denis"
git config --local user.email "denis@gmail.com"
unzip -o -d . ~/MSP/commits/commit0.zip
git add .
git commit -m "r0"

git checkout -b "red"
unzip -o -d . ~/MSP/commits/commit1.zip
git add .
git commit -m "r1"

git config --local user.name "yaroslav"
git config --local user.email "yaroslav@gmail.com"
git checkout -b "blue"
unzip -o -d . ~/MSP/commits/commit2.zip  
git add .
git commit -m "r2"


git config --local user.name "denis"
git config --local user.email "denis@gmail.com"
git checkout red
unzip -o -d . ~/MSP/commits/commit3.zip
git add .
git commit -m "r3"

unzip -o -d . ~/MSP/commits/commit4.zip  
git add .
git commit -m "r4"

git checkout master
unzip -o -d . ~/MSP/commits/commit5.zip
git add .
git commit -m "r5"

git config --local user.name "yaroslav"
git config --local user.email "yaroslav@gmail.com"
git checkout blue
unzip -o -d . ~/MSP/commits/commit6.zip
git add .
git commit -m "r6"

git config --local user.name "denis"
git config --local user.email "denis@gmail.com"
git checkout master
unzip -o -d . ~/MSP/commits/commit7.zip
git add .
git commit -m "r7"

git config --local user.name "yaroslav"
git config --local user.email "yaroslav@gmail.com"
git checkout blue
unzip -o -d . ~/MSP/commits/commit8.zip  
git add .
git commit -m "r8"

git config --local user.name "denis"
git config --local user.email "denis@gmail.com"
git checkout red
unzip -o -d . ~/MSP/commits/commit9.zip  
git add .
git commit -m "r9"

git checkout master
git merge red
git add .
git commit -m "solved conflicts from red into master"
unzip -o -d . ~/MSP/commits/commit10.zip  
git add .
git commit -m "r10"

git config --local user.name "yaroslav"
git config --local user.email "yaroslav@gmail.com"
git checkout blue
unzip -o -d . ~/MSP/commits/commit11.zip  
git add .
git commit -m "r11"

git config --local user.name "denis"
git config --local user.email "denis@gmail.com"
git checkout master
unzip -o -d . ~/MSP/commits/commit12.zip  
git add .
git commit -m "r12"

git config --local user.name "yaroslav"
git config --local user.email "yaroslav@gmail.com"
git checkout blue
unzip -o -d . ~/MSP/commits/commit13.zip  
git add .
git commit -m "r13"

git config --local user.name "denis"
git config --local user.email "denis@gmail.com"
git checkout master
git merge blue
### — solving the conflict manually
git add .
git commit -m "solved conflicts from blue into master"
unzip -o -d . ~/MSP/commits/commit14.zip  
git add .
git commit -m "r14"
