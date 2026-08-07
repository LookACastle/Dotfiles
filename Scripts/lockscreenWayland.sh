#!/bin/bash
# Lightly modified glichting screen lock script by xzvf
set -e

pngfile="/tmp/lockscreen.png"
bmpfile="/tmp/lockscreen.bmp"
glitchedfile="/tmp/lockscreen_g.bmp"

grim $pngfile

# convert to bmp
magick $pngfile $bmpfile
magick $bmpfile -rotate 90 $bmpfile
rm $pngfile


for a in {1,2,4,5,10}
do
    # Glitch it with sox FROM: https://maryknize.com/blog/glitch_art_with_sox_imagemagick_and_vim/
    sox -t ul -c 1 -r 48k $bmpfile -t ul $glitchedfile trim 0 90s : echo 1 1 $((a*2)) 0.1
    # Pixalate
    magick -define bmp:ignore-filesize=true $glitchedfile -sample 25% -sample 400% $bmpfile
    rm $glitchedfile
    # Rotate it by 90 degrees
    magick $bmpfile -rotate -90 $bmpfile
done


# Convert back to png
magick $bmpfile $pngfile
rm $bmpfile

swaylock -i $pngfile
rm $pngfile
