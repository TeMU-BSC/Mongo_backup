# Mongo BACKUP & RESTORE
### To restore you must run next script with file path, It will restore gzip file into the mongoDB.

- __Script__:

```bash

    $ mongorestore --gzip --archive=file_path

```


```bash

    $ 0 1 * * * sh /data/Mongo_backup/mongo_daily_backup.sh >> /data/Mongo_backup/logs/log_daily_backup.log 2>/data/Mongo_backup/logs/log_daily_last_details.log


    $ 0 0 * * 6 sh /data/Mongo_backup/mongo_weekly_backup.sh >> /data/Mongo_backup/logs/log_weekly_backup.log 2>/data/Mongo_backup/logs/log_weekly_last_details.log

```           


-files /data/Mongo_backup/

    - mongodb_backups/
      - daily/ : All daily backups are in this directory.
      - weekly/ : All weekly backups are in this directory.

    - logs/: All logs of daily and weekly backups.

      - log_daily_backup.log : Log about daily backup. It contains a short information about each backups 
      - log_daily_last_details.log : It contains all information of last daily backup.

      - log_weekly_backup.log : Log about weekly backup. It contains a short information about each¡weekly backups
      - log_weekly_last_details.log : It contains all information of last weekly backup.
  
- check time schedule
    - https://crontab.guru

