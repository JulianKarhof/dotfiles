bspc node @^1:^1:/ -i
bspc node @^1:^2:/ -i
bspc node @^2:^2:/ -i
bspc node @^3:^1:/ -i

bspc node @^2:^1:/ -i
bspc node @^2:^1:/ -o 0.76 -p east -i

bspc rule -a Insomnia:insomnia -o node=@^1:^1:/
bspc rule -a beekeeper-studio:beekeeper-studio -o node=@^1:^2:/
bspc rule -a Spotify:spotify -o node=@^1:^3:/
bspc rule -a kitty:ps_mobile -o node=@^2:^1:/1
bspc rule -a kitty:ps_web -o node=@^2:^2:/
bspc rule -a kitty:ps_web_run -o node=@^2:^2:/
bspc rule -a Navigator:firefox -o node=@^2:^2:/

/opt/Insomnia/insomnia & disown
LD_PRELOAD=/usr/lib/spotifywm.so spotify & disown
kitty --name ps_web --title web zsh -c "cd ~/projects/pictshare-web && nvim; zsh" & disown
kitty --name ps_web_run --title web_run sh -c 'cd ~/projects/pictshare-web && yarn dev; exec "${SHELL:-sh}"' & disown
kitty --name ps_mobile --title mobile zsh -c "cd ~/projects/pictshare_mobile && nvim; zsh" & disown
/usr/lib/firefox/firefox & disown
/usr/bin/beekeeper-studio & disown

sleep 3

bspc desktop -f ^4 --follow
bspc config external_rules_command ~/scripts/rules

emulator @Pixel_6_Pro_API_33 & disown
