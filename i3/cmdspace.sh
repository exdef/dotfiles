#!/bin/bash

i3-msg "append_layout /home/flo/.i3/workspace-1.json"

for i in 1 2 3 4 5 6 7 8
do
	i3-msg exec urxvt
done
