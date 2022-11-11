playerctl metadata title &> player.log
playerctl status &>> player.log
title=$(head -n 1 player.log)
status=$(head -n 2 player.log | tail -1)
length=${#title}
if [[ $title != "No players found" ]]
then
    if [[ $status == "Playing" ]]
    then
        prefix=""
    else
        prefix=""
    fi
    if [[ length -gt 30 ]]
    then
        echo "${title:0:30}..."
    else
        echo "$title"
    fi
else
    echo "Practice Silence!"
fi
