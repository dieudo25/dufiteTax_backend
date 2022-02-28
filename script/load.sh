#!/bin/bash 

USER=admin
PGPASSWORD='<Q:wax{E.);ESd+F>R3yQ/?:cr9q@Hm3'
DATABASE_NAME=dufitetax
FILENAME=dump_db.pgsql
LOCATION=/home/dieudo/Dev/projects/DufiteTax2/backend/.tmp
FILE=$LOCATION/$FILENAME

# Check if the variable are empty 
printf "\n\n######################################################################################\n\n"
printf "Check variable for running the script\n\n"
printf "######################################################################################\n\n"

if [ -z "$USER" ]; then
    printf "Please fill USER before running the script\n\n"
    exit 1
elif [ -z "$PGPASSWORD" ]; then
    printf "Please fill PGPASSWORD before running the script\n\n"
    exit 1
elif [ -z "$DATABASE_NAME" ]; then
    printf "Please fill DATABASE_NAME before running the script\n\n"
    exit 1
elif [ -z "$FILENAME" ]; then
    printf "Please fill FILENAME before running the script\n\n"
    exit 1
elif [ -z "$LOCATION" ]; then
    printf "Please fill LOCATION before running the script\n\n"
    exit 1
elif [ -z "$FILE" ]; then
    printf "Please fill FILE before running the script\n\n"
    exit 1
fi

if [ -f "$FILE" ]; then
    rm $FILE
fi

export PGPORT=5432
export DATABASE_NAME=dufitetax
export USER=admin
export PGPASSWORD='<Q:wax{E.);ESd+F>R3yQ/?:cr9q@Hm3'
pg_restore < /home/dufitetax/app/backend/.tmp/postgres_dufitetax_1646074007.pgdump
#mysqldump -u $USER --password=$PGPASSWORD $DATABASE_NAME > 
