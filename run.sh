#!/bin/sh

if [ "$1" = "" ]; then
  echo "ERROR: sh run.sh <count>"
  exit
fi

COUNT=$1

echo "Compile generator"
javac GenerateFiles.java
java -Dcount=$COUNT GenerateFiles
echo "Build project"
mvn -q compile -f demo
echo "Exec (1st)"
mvn -q exec:java -f demo -Dexec.mainClass=pattern1.Main
mvn -q exec:java -f demo -Dexec.mainClass=pattern2.Main
mvn -q exec:java -f demo -Dexec.mainClass=pattern3.Main
mvn -q exec:java -f demo -Dexec.mainClass=pattern4.Main
mvn -q exec:java -f demo -Dexec.mainClass=pattern5.Main
echo "Exec (2nd)"
mvn -q exec:java -f demo -Dexec.mainClass=pattern1.Main
mvn -q exec:java -f demo -Dexec.mainClass=pattern2.Main
mvn -q exec:java -f demo -Dexec.mainClass=pattern3.Main
mvn -q exec:java -f demo -Dexec.mainClass=pattern4.Main
mvn -q exec:java -f demo -Dexec.mainClass=pattern5.Main
