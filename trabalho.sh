#!/bin/bash

grep -E '^[01]*$' bruxarias.txt > 1a.txt

grep -E '^1[01]{0,7}$' bruxarias.txt > 1b.txt

grep -E '^1[01]{0,7}$' bruxarias.txt > 1c.txt

grep -E '^(0|[1-9][0-9]*)$' bruxarias.txt > 1d.txt

grep -Eo '[ue]tt' bruxarias.txt > 1e.txt

grep -E '^[A-Za-z][a-z]{2,}$' bruxarias.txt > 1f.txt

grep -E '^[A-Za-z][A-Za-z0-9_]*$' bruxarias.txt > 1g.txt

grep -E '^((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\.){3}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9]$' bruxarias.txt > 1h.txt

find /etc -maxdepth 1 -type d > 2a.txt

find /etc -maxdepth 1 -type d > 2b.txt

find /etc -type f -size +1k > 2c.txt

find /var -type f -mtime -7 > 2d.txt

awk -F: '{print $1}' /etc/passwd > 3a.txt

awk -F: 'NR>=10 && NR<=20 {print $1}' /etc/passwd > 3b.txt

sed 's/^tiago:/exercicio:/' passwd_teste > 4a.txt

sed '/tiago/d' passwd_teste > 4b.txt
