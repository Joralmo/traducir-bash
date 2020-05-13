#!/usr/bin/env bash
text="$(pbpaste)"
translate="$(/usr/local/bin/wget -U "Mozilla/5.0" -qO - "https://traducir-bash.herokuapp.com/?a=es&texto=$(echo $text)")"
echo -e "Texto original:" "$text"'\n' > /tmp/notification
echo "Texto traducido:" "$translate" >> /tmp/notification
/usr/local/bin/zenity --text-info --title="Traducción Ingles a español" --filename=/tmp/notification