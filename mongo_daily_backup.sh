filename=$(date +"%a")
dir="/data/Mongo_backup/mongodb_backups/weekly"

path="$dir/$filename.gz"

if [ ! -d "$dir" ]; then
    mkdir -p $dir
fi

date=$(date +"%D")
echo "\n$date##############################################"

echo "Creating MongoDB backup: $path\n"


mongodump --gzip --archive="$path"

if [ $? -eq 0 ]
    then
        echo "-> Backup succeed, created at: $path"
    else
        echo "\n---------Error  Error  Error-------------"
        echo "-> Backup Failed, created at: $path"
fi
