#!/bin/bash

DATE=`date +%F`
TITLEWITHSPACES=$1
if [ -z "$TITLEWITHSPACES" ]
then 
    echo "Need to enter a title."
else 
    RESULT="---\ntitle: $TITLEWITHSPACES\nauthor: Spencer\n---"
    FILETITLE=${TITLEWITHSPACES// /-}
    echo -e $RESULT >> "./posts/$DATE-$FILETITLE.markdown"
    sublime "./posts/$DATE-$FILETITLE.markdown"
fi