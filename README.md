# Sakura_Backup

# What

レンサバのWordPressバックアップスクリプト
Cronにいれて運用する

# How
こんな感じにcrontabに設定しておく
```
$crontab -l
00 2 * * * bash sakura_backup/backup.sh /home/nozomoto/www/muji_blog /home/nozomoto/backup muji_backup
```

# TODO 
- 容量が溢れないようにbackupの数の上限を定められるようにする(5個とか
