#!/bin/bash

# Доступность порта 80
if ! nc -z -w 2 127.0.0.1 80; then
    exit 1
fi

# Наличие файла index.html
if [ ! -f "/var/www/html/index.nginx-debian.html" ]; then
    exit 1
fi

# Если всё ок — код 0
exit 0

