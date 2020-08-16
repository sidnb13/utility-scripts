#!/bin/bash

BACKUP_PATH="/Users/sidbaskaran/Desktop/utility-scripts/crontabs.txt"
> $BACKUP_PATH

CRONTABS="$(crontab -l)"
IFS=$'\n'

for tab in $CRONTABS
do 
    echo $tab >> $BACKUP_PATH
done