# Linux Security Lab

## System
OS: Arch Linux

## User
Username:pretty
UID:1000
GID:1000

## Groups
My groups:wheel

## File permissions
test.txt permissions before chmod:-rw-r--r--
test.txt permissions after chmod 600:-rw-----
test.txt permissions after chmod 644:-rw-r--r--

## Processes
Important processes observed:Isolated Web Co, Gnome-shell, kgx, firefox

## Services
Some running services:accounts-daemon.service, auto-cpufreq.service, bluetooth.service

## Logs
Number of error messages observed:80

## What I learned
1.Linux uses permissions for owner, group and others.
2.chmod changes file permissions.
3.ps shows running processes.
4.journalctl shows system logs.
