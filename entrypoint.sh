while :

do
        response=$(curl $URL --write-out '%{response_code}' --silent --output /dev/null -H "User-Agent: DockerInterval")
        if [ $INTERVAL -eq 0 ]
        then
                break
        else
                value=${URL#*=}
                echo "{status: $response, date:$(date -Iseconds), host: $value}"
                sleep "${INTERVAL}m"
        fi
done

exit 0
