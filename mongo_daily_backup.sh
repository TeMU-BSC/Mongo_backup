filename=$(date +"%a")
dir="mongodb_backups/daily"
path="./$dir/$filename.gz"

if [ ! -d "$dir" ]; then
    mkdir -p $dir
fi

echo "\n---------------------------------------"
echo "\n---------------------------------------"
echo "\n---------------------------------------"
echo "\n---------------------------------------"
echo "Creating MongoDB backup: $filename\n"


mongodump --gzip --archive="$path"

if [ $? -eq 0 ]
    then
        echo "\n----------------------------------------"
        echo "-> Backup succeed, created at: $path"
        echo "Done!\n"

    else
        echo "\n---------Error  Error  Error-------------"
        echo "-> Backup Failed, created at: $path"
        echo "-----------------------------------------\n"
fi