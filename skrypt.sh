#!/bin/bash

date=$1

cdate=$(date)

if [ $date="--date" ]
then
	echo $cdate
fi

