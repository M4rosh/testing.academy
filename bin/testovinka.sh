#!/bin/bash

PLAY=y

while [[ $PLAY =~ ^(y|yes|Y|YES|a|A|ano|ANO)$ ]]; do
	echo "Myslim si cislo od 1 do 20"
	SECRET=6
	TIP=0
	ATTEMPTS=5

	while [[ $TIP -ne $SECRET ]] && [[ $ATTEMPTS -gt 0 ]]; do
    	echo "Zostavajuci pocet pokusov: $ATTEMPTS"
    	read -p "Zadaj tip: " TIP

    	while [[ ! -n $TIP ]] || [[ ! $TIP =~ ^[0-9]+$ ]] || [[ ! $TIP -ge 1 ]] || [[ ! $TIP -le 20 ]]; do
        	echo "Ta ty co si zac? Ta zadaj cislo, ne?"
        	read TIP
    	done

    	if [[ $TIP -lt $SECRET ]]; then
        	echo "moje cislo je vacsie ako $TIP"
    	else
        	if [[ $TIP -gt $SECRET ]]; then
            	echo "moje cislo je mensie ako $TIP"
        	else
            	echo "ta ty genius"
        	fi
    	fi

    	ATTEMPTS=$((ATTEMPTS-1))
	done

	if [[ $TIP -ne $SECRET ]]; then
    	echo "Uz ti dosli pokusy. Mas smolu. Life sucks"
	fi

	# dalsia hra?
	read -p "Chces si zahrat znova? y/n " PLAY
done

# credits
echo "dovidenia. podpor ma na cisle 158"

