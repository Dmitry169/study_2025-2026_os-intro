#!/bin/bash
mkdir -p ~/backup
tar -cf ~/backup/backup_$(date +%Y%m%d_%H%M%S).tar "$0"
echo "Backup created: ~/backup/backup_$(date +%Y%m%d_%H%M%S).tar"
