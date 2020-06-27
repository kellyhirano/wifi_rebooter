#!/bin/bash

# ping local gateway
SERVER=`hostname -I | sed 's:[^.]*$:1:'`

# Only send two pings, sending output to /dev/null
ping -c2 ${SERVER} > /dev/null

# If the return code from ping ($?) is not 0 (meaning there was an error)
if [ $? != 0 ]
then
    # Restart the wireless interface
    ip link set wlan0 down
    ip link set wlan0 up
fi
