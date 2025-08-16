#!/bin/bash
# Shell script to compress all of the jpeg files from a folder
# Will output the result in a new opt folder

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color
mkdir -p opt
for image in *.jpg
do
  printf "${GREEN}Compressing${NC} ${image}\n"
  djpeg $image | cjpeg -quality 90 -progressive | jpegtran -optimize > opt/$image
done