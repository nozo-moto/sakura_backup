# /usr/bin/bash -xeu

BACKUPPATH=$1
BACKUPDIR=$2
BACKUPNAME=$3
date +%s | ( read now
BACKUPFILENAME=$now$BACKUPNAME
mkdir -p $BACKUPDIR/$now/files
wp db export $BACKUPDIR/$now/$now.sql --path=$BACKUPPATH
cp -r $BACKUPPATH/* $BACKUPDIR/$now/files/
tar czvf $BACKUPDIR/$BACKUPFILENAME.tar.gz $BACKUPDIR/$now
rm -rf $BACKUPDIR/$now
)
