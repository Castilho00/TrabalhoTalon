path=/var/sistema
backupDir=/var/backups

systemFolder=$(ls -s $backupDir/projeto*.tar.gz | head -n 1)
tar -xzf $systemFolder -C $path