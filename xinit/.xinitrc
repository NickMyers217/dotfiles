# vbox shit
#VBoxClient-all &

# Load any X files and adjust X settings
xset +fp /usr/share/fonts/local
xset fp rehash
xsetroot -cursor_name left_ptr &
#xrandr -s 3440x1440 # Desktop resolution
#xrandr -s 3440x1440 # Desktop resolution
#feh --bg-scale ~/Wallpaper/earth.jpg
#feh --bg-scale ~/Wallpaper/earth.jpg

# settings daemon (need it for gtk and icons and stuff)
#xfsettingsd &

# Compisitor
#compton --config ~/.config/compton.conf &

# Start window manager and programs
#xrandr -s 3440x1440 # Desktop resolution
#xrandr -s 3440x1440 # Desktop resolution
#feh --bg-scale ~/Wallpaper/earth.jpg
#feh --bg-scale ~/Wallpaper/earth.jpg

#sxhkd &
#exec bspwm

exec startxfce4
