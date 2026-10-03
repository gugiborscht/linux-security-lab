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


## Аналіз системних журналів

Для перегляду попереджень системи використано journalctl.

Команда:
journalctl -p warning -b

Під час аналізу було виявлено попередження щодо доступності файлу:
/boot/loader/random-seed

Початкові права файлу:
-rwxr-xr-x

Розділ /boot використовує файлову систему VFAT. Для обмеження доступу було змінено параметри монтування у /etc/fstab:
fmask=0077,dmask=0077

Після перезавантаження права файлу стали:
-rwx------

Перевірка показала:
Random seed file /boot/loader/random-seed successfully refreshed

Висновок:
Попередження щодо доступності random-seed було усунуто шляхом обмеження доступу до файлів розділу /boot.


## Перевірка несправних служб

Команда:
systemctl --failed

Результат:
0

Висновок:
Після перевірки системи несправних systemd-служб не виявлено.
