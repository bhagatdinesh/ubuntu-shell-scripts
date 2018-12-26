#!/bin/bash
# usage
# mp4ToGif dogs.mp4 dogs.gif
# install following plugins first before running this file
# brew install imagemagick ffmpeg ghostscript
  fn=$1
  echo $1
  frames=`mktemp -d`
  mkdir $frames
  out=$2
  ffmpeg -i $fn -vf scale=320:-1:flags=lanczos,fps=10 $frames/ffout%03d.png
  convert -loop 0 $frames/ffout*.png $out
  rm -rf $frames
  
  
