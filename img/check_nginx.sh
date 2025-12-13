#!/bin/bash

if ! ss -tln | grep -q ':80 '; then
    echo "Port 80 is not listening"
    exit 1
fi

if [[ ! -f "/usr/share/nginx/html/index.html" ]]; then
    echo "index.html not found"
    exit 1
fi

exit 0
