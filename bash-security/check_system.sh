#!/bin/bash

echo "=== System Security Check ==="

echo
echo "Hostname:"
hostname

echo
echo "Current user:"
whoami

echo
echo "Kernel:"
uname -r

echo
echo "Listening ports:"
ss -tuln

echo
echo "Failed services:"
systemctl --failed

echo
echo "Firewall status:"
if systemctl is-active --quiet ufw; then
    echo "UFW: active"
elif systemctl is-active --quiet firewalld; then
    echo "Firewalld: active"
else
    echo "No common firewall service is active"
fi

echo
echo "SSH service:"
if systemctl is-active --quiet sshd; then
    echo "SSH: active"
else
    echo "SSH: inactive"
fi

echo
echo "Security check completed."
