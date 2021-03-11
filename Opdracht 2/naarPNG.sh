for i in $1**.jpg
do 
	magick convert $i -resize 128x128 $i.png
done
