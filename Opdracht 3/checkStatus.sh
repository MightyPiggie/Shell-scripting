rm -f $3
for bestand in $1/*
do
    $2 $bestand >/dev/null
    echo "bestandnaam: $bestand returnstatus: $?" >> $3
done	
