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

sed -i "s/Basic Bukkit Mod Description/$newdesc/g" *.*

find . -type f -exec sed -i s/BasicMod/$newname/g {} \;

mv src/com/github/intangir/BasicMod src/com/github/intangir/$newname
mv src/com/github/intangir/$newname/BasicMod.java src/com/github/intangir/$newname/$newname.java

