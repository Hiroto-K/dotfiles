#!/bin/sh

for file in `find . -type "f" -iname "*.sh"`; do
  echo $file
  bash -n $file
done