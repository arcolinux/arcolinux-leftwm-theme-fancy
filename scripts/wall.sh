#!/usr/bin/env bash


### Check if python-pywal is installed
### Check if dir exists and copy the template in its proper place
if [ -x "$(command -v wal)" ]; then
  if [ ! -d $HOME/.config/wal/templates ] ; then
    mkdir $HOME/.config/wal/templates &&
    cp $HOME/.config/leftwm/themes/current/template-wal/color.leftwm-theme.ron  $HOME/.config/wal/templates
  elif
    [ ! -f $HOME/.config/wal/templates/color.leftwm-theme.ron ] ; then
        cp -f $HOME/.config/leftwm/themes/current/template-wal/color.leftwm-theme.ron  $HOME/.config/wal/templates
  fi
    my_array=($HOME/Insync/Apps/Desktoppr/*)
        ####my_array=(/usr/share/backgrounds/*)

     wal -i ${my_array[$(( $RANDOM % ${#my_array[@]}))]} -a 80
    cat ~/.cache/wal/color.leftwm-theme.ron &&
    ####bat ~/.cache/wal/color.leftwm-theme.ron &&
    cp -f ~/.cache/wal/color.leftwm-theme.ron $HOME/.config/leftwm/themes/current/theme.ron &&

    leftwm command "LoadTheme $HOME/.config/leftwm/themes/current/theme.ron"

else

  # Set background
  if [ -x "$(command -v feh)" ]; then
    feh --randomize --bg-fill $HOME/Insync/Apps/Desktoppr/*
        ####feh --randomize --bg-fill /usr/share/backgrounds/*

  fi
fi
