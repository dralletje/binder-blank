TIMES_TRIED=0
until [ $TIMES_TRIED -eq 60 ] || $(curl --output /dev/null --silent --fail "http://localhost:8888/pluto"); do
    printf '.'
    TIMES_TRIED=$((TIMES_TRIED+1))
    sleep 1
done
