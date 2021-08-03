#!/usr/bin/bash
# run: sudo installa2startvd.sh
echo `which a2term` > /dev/null
if [ $? != 0 ]
then
  echo "It seems that a2pi is not installed. Do nothing."
  exit 1
fi
INSTALLPATH=`which a2term | sed s/a2term// `

if [ ! -e $INSTALLPATH/a2startvd ]
then 
  cp a2startvd $INSTALLPATH/a2startvd
  chmod a+x $INSTALLPATH/a2startvd
fi

if [ ! -e $INSTALLPATH/a2stopvd ]
then 
  cp a2stopvd $INSTALLPATH/a2stopvd
  chmod a+x $INSTALLPATH/a2stopvd
fi
