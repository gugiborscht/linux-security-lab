# Linux Services Lab

## Мета

Дослідити системні служби Linux та визначити, які служби запущені зараз і які автоматично запускаються разом із системою.

## Запущені служби

Для отримання списку активних служб використано:

```bash
systemctl list-units --type=service --state=running --no-pager

Результат збережено у running_services.txt.

## Увімкнені служби

Для перегляду служб, які запускаються автоматично:

systemctl list-unit-files --type=service --state=enabled --no-pager

Результат збережено у enabled_services.txt.
