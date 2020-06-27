# wifi_rebooter
Raspberry Pi script to restart wifi if it disconnects. 

Modified version of http://alexba.in/blog/2015/01/14/automatically-reconnecting-wifi-on-a-raspberrypi/ to work with buster (thanks http://disq.us/p/1qswuks).

Add to `/etc/crontab`:

    */5 *   * * *   root    wifi_rebooter.sh

to run the script and check for the connection every 5 minutes.
