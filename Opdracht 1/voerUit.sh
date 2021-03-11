case $1 in

	**.py)
		python3 $1
		;;
	
	**.sh)
		bash $1
		;;

	**.cc)
		cat $1
		;;

	*)
		echo -n "File type is not supported"
		;;
esac
