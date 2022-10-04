eww_path="$PWD/"
winstate=$(eww windows -c "$eww_path" | grep sysmenu)

if [ "${winstate:0:1}" = "*" ]; then
    eww close sysmenu -c "$eww_path"
else
    eww open sysmenu -c "$eww_path"
fi
