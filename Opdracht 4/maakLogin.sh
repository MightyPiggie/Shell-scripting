#!/bin/bash
echo Gebruikersnaam: 
read varname
if [[ $varname == "" ]]
then
	varname=$USER
fi
samepassword=0
length=0
while [[ $samepassword != 2 ]] || [[ $length < 8 ]]
do
	echo Wachtwoord:
	read -s password
	length=${#password}
	echo Herhaal Wachtwoord:
	read password2
	if [[ $password == $password2 ]]
	then
		samepassword=2
	fi
done

hash=$(echo -n $password | md5sum)
echo "$varname" > $1
echo "$hash" >> $1
