#!/bin/bash


# Let the person running the script know what's going on.
echo -e "\n\033[1mChanging some dates...\033[0m\n"
find . -type f -name "*.tex" -print0 | xargs -0 sed -i '' -e 's/Spring\ 2020/Spring\ 2021/g'

cd ~/repos/npre412/readings
# Find all directories here - that are at least 1 level down, but don't go any
# further than 1 directory.


# This bash script finds directories in this one
# Then builds the pdfs with latexmk

TOP_DIR=$PWD
SUB_DIRS=*/
for dir in $SUB_DIRS
do 
  cd $TOP_DIR/$dir 
  echo $PWD
  latexmk -pdf 
done
cd $TOP_DIR

echo -e "\n\033[1mComplete!!\033[0m\n"
