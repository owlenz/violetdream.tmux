#!/bin/bash

black="#000000"
white="#C6C6C6"
violet="#663C91"
cyan="#138f82"
comment_grey="#1BB2A2"
light_green="#1AB3A3"

set() {
	local option=$1
	local value=$2
	tmux set-option -gq "$option" "$value"
}

setw() {
	local option=$1
	local value=$2
	tmux set-window-option -gq "$option" "$value"
}

set "message-style" "fg=$white,bg=$black"

set "status" "on"
set "status-justify" "left"

set "status-left-length" "100"
set "status-right-length" "100"
set "status-right-attr" "none"
set "status-style" "fg=$white,bg=$black"
set "status-attr" "none"
set "status-left-attr" "none"

set "mode-style" "fg=$black,bg=$cyan"
set "window-style" "fg=$comment_grey"
set "window-active-style" "fg=$white"

set "pane-border-style" "fg=$white,bg=$black"
set "pane-active-border-style" "fg=$light_green,bg=$black"

set "display-panes-active-colour" "$cyan"
set "display-panes-colour" "$violet"

time_format="%R"
date_format="%d/%m/%Y"

## Right Side (time,date,host)
set "status-right" "#[fg=$white,bg=$black]${time_format} ${date_format} #[fg=$black,bg=$violet,bold] #h "

## Left Side (time,date,host)
set "status-left" "#[fg=$black,bg=$violet,bold] #S "

# Windows
set "window-status-format" "#[fg=$black,bg=$black,nobold,nounderscore,noitalics]#[fg=$white,bg=$black] #I #W #[fg=$black,bg=$black,nobold,nounderscore,noitalics]"
# Window Active
set "window-status-current-format" "#[fg=$black,bg=$cyan,italics] #I #W "
