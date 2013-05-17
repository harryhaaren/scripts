#!/bin/bash

for i in "$@"
do
  flac "$i"
done
