xrandr --output DP-2 --left-of DP-4 --mode 3840x2160 --output DP-0 --mode 3840x2160 --right-of DP-4 --output DP-2 --mode 3840x2160
xset r rate 220 40
xautolock -time 10 -locker "betterlockscreen -l" &
xsetroot -cursor_name left_ptr &
gnome-keyring-daemon --replace --foreground --components=secrets,ssh,pcks11
