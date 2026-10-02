# Linux File Permissions Lab

## Мета

Дослідити права доступу до файлів у Linux та перевірити, як зміна permissions впливає на доступ до файлу.

## Виконані команди

```bash
chmod 600 private.txt
chmod 644 public.txt
chmod 700 script.sh

## Також було перевірено блокування доступу

chmod 000 private.txt
cat private.txt

## Після перевірки права були повернені

chmod 600 private.txt
