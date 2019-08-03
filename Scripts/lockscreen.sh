#!/bin/bash
scrot ~/.lock.png
convert -scale 20% -scale 500% ~/.lock.png ~/.lock.png
convert -noise 0x8 ~/.lock.png ~/.lock.png
i3lock -i ~/.lock.png
