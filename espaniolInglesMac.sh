#!/usr/bin/env bash
text="$(pbpaste)"
translate="$(/usr/local/bin/wget -U "Mozilla/5.0" -qO - "https://traducir-bash.herokuapp.com/?a=en&texto=$(echo $text)")"
echo -e "Texto original:" "$text"'\n' > /tmp/notification
echo "Texto traducido:" "$translate" >> /tmp/notification
echo $translate | pbcopy
/usr/local/bin/zenity --text-info --title="Traducción Español a ingles" --filename=/tmp/notification