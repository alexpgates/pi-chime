# pi-chime
Big Ben for your Raspberry Pi

This is a project based on http://www.instructables.com/id/Raspberry-Pi-Big-Ben-Clock/ which turns your Raspberry Pi into Big Ben - with chimes every hour and half hour.

The original instructable worked well, but it sounded un-natural to have each hourly chime finish before the next hit. 

This version uses [SoX](http://sox.sourceforge.net/) to play the chimes and outputs a more natural-sounding hourly chime. Note that the mp3 format for SoX must also be installed `libsox-fmt-mp3`

After configuring the script, you must set an entry in your Pi's Crontab to schedule the chimes.

### Crontab entry

```
0,30 * * * * bash /home/pi/chime/chime.sh
```
