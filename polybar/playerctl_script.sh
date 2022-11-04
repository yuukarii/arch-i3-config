playerctl metadata title &> player.log
title=$(head -n 1 player.log)
length=${#title}
if [[ $title != "No players found" ]]
then 
    if [[ length -gt 30 ]]
    then
        echo "${title:0:30}..."
    else
        echo "$title"
    fi
else
    echo "Practice Silence!"
fi
