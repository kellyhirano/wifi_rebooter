# wifi_rebooter
Raspberry Pi script to restart wifi if it disconnects. Check is based on pinging the local gateway, which is assumed to be the IPv4 `.1` of your device's subnet.

Copy `wifi_rebooter.sh` to `/usr/local/bin`. Add to `/etc/crontab` (assuming `/usr/local/bin` is in your crontab `$PATH`):

    */5 *   * * *   root    wifi_rebooter.sh

to run the script and check for the connection every 5 minutes.

## Acknowledgement

Modified version of http://alexba.in/blog/2015/01/14/automatically-reconnecting-wifi-on-a-raspberrypi/ to work with buster (thanks http://disq.us/p/1qswuks).
