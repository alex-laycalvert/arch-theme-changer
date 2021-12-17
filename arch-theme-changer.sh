#!/bin/bash

CHANGE_THEME_DIR=~/themes/change_archy_theme

THEME_CHOICE=`cat $CHANGE_THEME_DIR/themes | dmenu`

QTILE_ARCHY_THEME=$CHANGE_THEME_DIR/qtile_themes/$THEME_CHOICE.py
KITTY_ARCHY_THEME=$CHANGE_THEME_DIR/kitty_themes/$THEME_CHOICE.conf
STARSHIP_ARCHY_THEME=$CHANGE_THEME_DIR/starship_themes/$THEME_CHOICE.toml

mv ~/.config/qtile/config.py ~/.config/qtile/config.py.bak
mv ~/.config/kitty/kitty.conf ~/.config/kitty/kitty.conf.bak
mv ~/.config/starship.toml ~/.config/starship.toml.bak

cp $QTILE_ARCHY_THEME ~/.config/qtile/config.py
cp $KITTY_ARCHY_THEME ~/.config/kitty/kitty.conf
cp $STARSHIP_ARCHY_THEME ~/.config/starship.toml

