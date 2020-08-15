#!/bin/bash

git_fetch() {
    if test -d "$1/.git"; then
        cd $1
        {
            {
                git fetch
            } && {
                echo "$(date +"%H:%M:%S %m/%d/%y") - $(basename $BASH_SOURCE) - $1 fetched" >> /Users/sidbaskaran/Desktop/utility-scripts/MASTER.log
            }
        } || :
    fi
}

for sbd in ~/Desktop/coding-projects/*; do
    git_fetch $sbd
    cd ..
done

git_fetch "/Users/sidbaskaran/Desktop/uil-java"
git_fetch "/Users/sidbaskaran/Desktop/utility-scripts/spotify-ad-killer"
git_fetch "/Users/sidbaskaran/Desktop/utility-scripts"