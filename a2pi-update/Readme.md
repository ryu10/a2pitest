# Dir: a2pi-update

Before running the setup scripts found in this directory, make sure that the following are installed on the Raspberry Pi.

* apple2pi software
* a2pi source tree
* AppleCommandar (ac.jar)

## a2pi.patch

This is a patch to `a2pi.c`, to make it ignore the null command `0x00` and do not produce error logs. This prevents `syslog` and `daemon.log` from filling up the Raspi filesystem when the Apple II is turned off.

How to apply the patch: copy `a2pi.patch` to `src` directory of `a2pi` repo. Cd to `apple2pi/src`, and then run:
 ```
 patch < a2pi.patch
 make a2pid
 chmod a+x a2pid
 ```
And then copy the newly created a2pid to the original install location (e.g. `/usr/sbin/`)

## ac.sh
A shell script command file equivalent to `java -jar ac.jar $*`.  Copy this file to where ac.jar is installed (e.g. `/usr/local/bin/ac.sh`). The path (`/usr/local/bin`) should be included in path.
