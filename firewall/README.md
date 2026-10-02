# Linux Firewall

Firewall — це система, яка контролює мережеві з'єднання.

Основні завдання:
- дозволяти потрібні з'єднання;
- блокувати небажані з'єднання;
- контролювати мережеві порти.

Для роботи з firewall у Linux можна використовувати nftables.

Основні команди:
sudo nft list ruleset
sudo nft list tables
sudo nft list chains


## Практика

Перевірка версії nftables:
nft --version

Перегляд поточних правил:
sudo nft list ruleset

Перевірка служби nftables:
systemctl status nftables --no-pager
