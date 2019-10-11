#!/bin/bash
onedark_black="#282c34"
onedark_blue="#61afef"
onedark_yellow="#e5c07b"
onedark_red="#e06c75"
onedark_white="#aab2bf"
onedark_green="#98c379"
onedark_visual_grey="#3e4452"
onedark_comment_grey="#5c6370"

time_format="%R"
date_format="%Y-%m-%d"

tmux set-option -gq status "on"
tmux set-option -gq status-justify "left"

tmux set-option -gq status-left-length "100"
tmux set-option -gq status-right-length "100"
tmux set-option -gq status-right-attr "none"

tmux set-option -gq message-style "bg=$onedark_black,fg=$onedark_white"
tmux set-option -gq message-command-style "bg=$onedark_black,fg=$onedark_white"

tmux set-option -gq status-attr "none"
tmux set-option -gq status-left-attr "none"
tmux set-option -gq status-style "bg=$onedark_black,fg=$onedark_visual_grey"

tmux set-option -gq pane-border-style "fg=$onedark_visual_grey"
tmux set-option -gq pane-active-border-style "fg=$onedark_red"

tmux set-window-option -gq mode-style "bg=$onedark_visual_grey"

tmux set-window-option -gq window-status-fg $onedark_black
tmux set-window-option -gq window-status-bg $onedark_visual_grey
tmux set-window-option -gq window-status-attr "none"
tmux set-window-option -gq window-status-activity-bg $onedark_black
tmux set-window-option -gq window-status-activity-fg $onedark_visual_grey
tmux set-window-option -gq window-status-activity-attr "none"
tmux set-window-option -gq window-status-separator ""

tmux set-option -gq @prefix_highlight_fg "$onedark_visual_grey"
tmux set-option -gq @prefix_highlight_bg "$onedark_yellow"
tmux set-option -gq @prefix_highlight_copy_mode_attr "bg=$onedark_yellow,fg=$onedark_visual_grey"
tmux set-option -gq @prefix_highlight_output_prefix "« "
tmux set-option -gq @prefix_highlight_output_suffix " "

tmux set-option -gq status-right "#{prefix_highlight}#[fg=$onedark_visual_grey,bg=$onedark_black]«#[fg=$onedark_white,bg=$onedark_visual_grey] ${date_format} ${time_format} #[fg=$onedark_green,bg=$onedark_visual_grey]«#[fg=$onedark_visual_grey,bg=$onedark_green] #h "
tmux set-option -gq status-left "#[fg=$onedark_visual_grey,bg=$onedark_green] #S #[fg=$onedark_visual_grey,bg=$onedark_black]»"

tmux set-option -gq window-status-format "#[fg=$onedark_white,bg=$onedark_visual_grey] #I » #W #[fg=$onedark_visual_grey,bg=$onedark_black]»"
tmux set-option -gq window-status-current-format "#[fg=$onedark_visual_grey,bg=$onedark_red,bold] #I » #W #[fg=$onedark_visual_grey,bg=$onedark_black]»"
