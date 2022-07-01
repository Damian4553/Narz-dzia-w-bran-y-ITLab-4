#!/bin/bash

option=$1

howmany=$2

cdate=$(date)

if [ $howmany=='' ]
then
	$howmany=100
fi

if [ $option=="--date" || $option=="-d"]
then
	echo $cdate
fi

if [ $option=="--logs" || $option=="-l"]
then
	for((i=1;$i<$howmany;$i++));do
		echo 'plik${i}.txt skrypt.sh ${cdate}' >> plik${i}.txt
	done
fi

if [ $option=="--help" || $option=="-h"]
then
	echo --date -> wyświetlna aktulana date
	echo --logs -> tworzy 100 plikow txt chyba ze po spacji poda sie liczbe to wtedyt tyle ile wynosci ta liczba
	echo --help -> wyswietla mozliwe opcje
	echo -d -> wyświetlna aktulana date
	echo -l -> tworzy 100 plikow txt chyba ze po spacji poda sie liczbe to wtedyt tyle ile wynosci ta liczba
	echo -h -> wyswietla mozliwe opcje
fi
