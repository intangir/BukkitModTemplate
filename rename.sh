#!/bin/bash


if [ -z "$1" ] || [ -z "$2" ] ; then
  echo "Usage $0 <newname> <description>";
  exit;
fi

newname=$1
shift 1
newdesc=$@

echo "Renaming Project to: $newname"
echo "Changing description to: $newdesc"

cp -a . ../$newname
cd ../$newname

rm -rf .git

find . -type f -exec sed -i "s/BukkitModTemplate/$newname/g" {} \;
find . -type f -exec sed -i "s/Bukkit Mod Template Description/$newdesc/g" {} \;

mv src/main/java/com/github/intangir/BukkitModTemplate src/main/java/com/github/intangir/$newname
mv src/main/java/com/github/intangir/$newname/BukkitModTemplate.java src/main/java/com/github/intangir/$newname/$newname.java

