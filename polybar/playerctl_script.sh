title=$(playerctl metadata title)
length=${#title}
if [[ length -gt 30 ]]
then
	echo "${title:0:30}..."
else
	echo $title
fi
