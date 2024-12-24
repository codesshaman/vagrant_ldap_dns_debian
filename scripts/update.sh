#!/bin/bash

# Путь к папке подмодуля
submodule_dir="ldapserver"

# Проверяем, существует ли папка с подмодулем
if [ -d "$submodule_dir" ]; then
    echo "Подмодуль '$submodule_dir' найден. Обновляем изменения..."

    # Переходим в папку подмодуля
    cd "$submodule_dir" || exit

    # Получаем последние изменения из подмодуля
    git fetch
    git pull

    echo "Подмодуль '$submodule_dir' обновлён до последних изменений."

    # Возвращаемся в исходную директорию
    cd - || exit
else
    echo "Папка '$submodule_dir' не найдена. Подмодуль не существует."
    exit 1
fi
