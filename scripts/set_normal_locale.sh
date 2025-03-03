#!/bin/bash

# Путь к файлу
file="/usr/share/i18n/locales/en_US"

# Вставка строки после строки END LC_TIME
sed -i '/END LC_TIME/i first_weekday 2' "$file"

if [ $? -eq 0 ]; then
    locale-gen && reboot
else
    echo "Произошла ошибка."
fi
