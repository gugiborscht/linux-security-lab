# Linux Logs

Логи — це записи про події, які відбуваються в системі.

Основні місця з логами:
- /var/log/
- journalctl

Корисні команди:
journalctl
journalctl -b
journalctl -p err
journalctl -u sshd


## Практика

Перегляд помилок поточного запуску:
journalctl -p err -b --no-pager

Перегляд останніх подій:
journalctl -n 20 --no-pager

Перегляд логів NetworkManager:
journalctl -b -u NetworkManager --no-pager
