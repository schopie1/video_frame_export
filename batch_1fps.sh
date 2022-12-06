#!/bin/bash
find . -maxdepth 1 -name \*.mp4 -print0 | sed 's|./||g' | xargs -0 -i sh -c 'mkdir -p "images/{}"; nice -n 10 ffmpeg -i "{}" -threads 0 -r 1 "images/{}/image-%d.jpg";'
