#!/bin/sh

if [ "$1" = "" ]; then
  echo "ERROR: sh run.sh <count>"
  exit
fi

COUNT=$1

echo "remove trashes"
rm -rf demo/src/main/java/pattern*
echo "compile generator"
javac GenerateFiles.java
echo "generate"
java -Dcount=$COUNT GenerateFiles
echo "build project"
mvn compile -f demo
echo "exec"
mvn exec:java -f demo -Dexec.mainClass=pattern1.Main
mvn exec:java -f demo -Dexec.mainClass=pattern2.Main
mvn exec:java -f demo -Dexec.mainClass=pattern3.Main
mvn exec:java -f demo -Dexec.mainClass=pattern4.Main
mvn exec:java -f demo -Dexec.mainClass=pattern5.Main
mvn exec:java -f demo -Dexec.mainClass=pattern1.Main
mvn exec:java -f demo -Dexec.mainClass=pattern2.Main
mvn exec:java -f demo -Dexec.mainClass=pattern3.Main
mvn exec:java -f demo -Dexec.mainClass=pattern4.Main
mvn exec:java -f demo -Dexec.mainClass=pattern5.Main
