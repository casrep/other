echo -n "Are you sure? [Y/n]"
read answer
for response in y Y ""; do
    if [ "$answer" = "$response" ]; then
        echo "Hibernating..."
        dbus-send --system --print-reply \
            --dest="org.freedesktop.UPower" \
            /org/freedesktop/UPower \
            org.freedesktop.UPower.Hibernate > /dev/null
	    else echo "Cancelled."
    fi
done
