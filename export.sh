#!/bin/bash
for i in `seq 1 3`; do
  phantomjs rasterize.js "http://5878be9d.ngrok.com/reves/$i?print=true" "reve-$(echo $i).png" 384px
done
