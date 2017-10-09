#!/bin/bash
# Triggered through Crontab every 30 minutes

minute=$(date +"%M")

if [[ $minute == 30 ]]
then
  play "/home/pi/chime/FOPGM68INC0CAI9.mp3"
elif [[ $minute == 00 ]]
then
  play "/home/pi/chime/F3CWOPJINC0CAI4.mp3"
  hour=$(date +"%I")
  if [[ $hour == 01 ]]
    then
        play /home/pi/chime/FOPGM68INC0CAI9.mp3
  else
   chime="sox /home/pi/chime/FOPGM68INC0CAI9.mp3 -p pad 2 0 |"
   x=2
   while [ $x -lt $hour ]; do
      chime="$chime sox - -m /home/pi/chime/FOPGM68INC0CAI9.mp3 -p pad 2 0 remix v2 |"
      let x=x+1
    done

    eval $chime \
    play - -m /home/pi/chime/FOPGM68INC0CAI9.mp3 remix v2
   fi
fi
