echo "     \"Are you sure?\""
read answer
for response in y Y yes YES Yes; do
    if [ "$answer" = "$response" ]; then
        echo "     \"Running...\""
        dbus-send --system --print-reply \
            --dest="org.freedesktop.UPower" \
            /org/freedesktop/UPower \
            org.freedesktop.UPower.Hibernate
        return 0 &> /dev/null
    fi
done
echo "     \"Done.\""
