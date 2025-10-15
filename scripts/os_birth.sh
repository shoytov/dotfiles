#!/bin/bash

# Определяем, какая версия stat используется
if stat --version &>/dev/null; then
    # GNU stat (Linux)
    birth_install=$(stat -c %W /)
else
    # BSD stat (macOS)
    # В BSD нет прямого аналога %W (birth time), поэтому используем время изменения inode (ctime)
    birth_install=$(stat -f %B /var/db/.AppleSetupDone)
fi

# Если birth_install = 0 — значит, birth time недоступен
if [ "$birth_install" -eq 0 ]; then
    echo "Невозможно определить дату установки системы: время рождения корневой директории недоступно."
    exit 1
fi

current=$(date +%s)
time_progression=$((current - birth_install))
days_difference=$((time_progression / 86400))

# Правильное склонение слова "день"
case $((days_difference % 10)) in
    1)  suffix="день" ;;
    2|3|4) suffix="дня" ;;
    *) suffix="дней" ;;
esac

# Исключения для 11–14
if (( days_difference % 100 >= 11 && days_difference % 100 <= 14 )); then
    suffix="дней"
fi

echo "Системе $days_difference $suffix"
