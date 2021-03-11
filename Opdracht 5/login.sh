echo Username:
read username
echo Password:
read -s password

declare -a array=()
i=0
while IFS= read -r line
do
	    array[i]=$line
	        let "i++"
	    done < "$1"
	    filepassword="${array[0]}"
if [[ "$filepassword" == "$username" ]]
then
	hash=$(echo -n $password | md5sum)
else
	echo mislukt!
	exit 1
fi
	if [[ "$hash" == "${array[1]}" ]]
	then 
		echo ingelogd!
	else
		echo mislukt!
		exit 1
fi
