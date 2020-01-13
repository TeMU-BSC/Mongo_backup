# Mongo BACKUP & RESTORE
### To restore you must run next script with file path, It will restore gzip file into the mongoDB.

- __Script__:

```bash

    $ mongorestore --gzip --archive=file_path

```

- crontab:
        - 0 1 * * * sh /data/Mongo_backup/mongo_daily_backup.sh >> /data/Mongo_backup/logs/log_daily_backup.log 2>/data/Mongo_backup/logs/log_daily_last_details.log
        - 0 0 * * 6 sh /data/Mongo_backup/mongo_weekly_backup.sh >> /data/Mongo_backup/logs/log_weekly_backup.log 2>/data/Mongo_backup/logs/log_weekly_last_details.log


- check time schedule
        - https://crontab.guru

