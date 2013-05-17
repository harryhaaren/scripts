#!/bin/bash

for i in "$@"
do
  # create .wav file name
  out="${i%/*}.wav"
  sox -v -0.9 $out
done
