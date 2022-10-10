#!/bin/sh
if [ ! -f UUID ]; then
  UUID="6b6544e5-9bfb-4a15-93fd-ac43d1b2e308"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

