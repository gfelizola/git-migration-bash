#!/bin/bash
while read line
do
    while IFS='|' read -ra ADDR; do
        echo "from: ${ADDR[0]}"
        echo "to: ${ADDR[1]}"

        # cd ~/Desktop <- uncomment this to use your Desktop as folder to process
        mkdir migracao

        git clone ${ADDR[0]} ./migracao
        cd ./migracao
        git remote add new_server ${ADDR[1]}
        git push new_server --all
        git push new_server --tags

        cd ..
        rm -Rf migracao

    done <<< "$line"
done < $1