echo "(Are you sure?) "
read -e answer
    for response in y Y yes YES Yes
    do
        if [ "_$answer" == "_$response" ]
        then
            return 0
        fi
    done
dbus-send --system --print-reply \
    --dest="org.freedesktop.UPower" \
    /org/freedesktop/UPower \
    org.freedesktop.UPower.Hibernate
