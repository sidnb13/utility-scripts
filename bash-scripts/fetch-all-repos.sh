#!/bin/bash

git_fetch() {
    if test -d "$1/.git"; then
        cd $1

        if [[ -n $(git status -s) ]] && [[ $1 != "/Users/sidbaskaran/Desktop/uil-java" ]]
        then
            git add .
            git commit -m "AUTOMATED COMMIT for $1"
            git push -u origin
        fi

        {
            {
                git pull --rebase
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

git_fetch "/Users/sidbaskaran/Desktop/uil-compsci/uil-java"
git_fetch "/Users/sidbaskaran/Desktop/utility-scripts/spotify-ad-killer"
git_fetch "/Users/sidbaskaran/Desktop/utility-scripts"

printf "\n"