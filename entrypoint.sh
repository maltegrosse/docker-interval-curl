#!/bin/bash

while :
do
        curl -H "User-Agent: DockerInterval" $URL
        if [ $INTERVAL -eq 0 ]
        then
                break
        else
                sleep "${INTERVAL}m"
        fi

done

exit 0
