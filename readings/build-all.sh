#!/bin/bash
# This bash script finds directories in this one
# Then builds the pdfs with latexmk

# This is where I want my script to start.
TOP_DIR=$PWD
SUB_DIRS=*/
for dir in $SUB_DIRS
do 
  cd $TOP_DIR/$dir 
  echo $PWD
  latexmk -pdf 
done
cd $TOP_DIR
