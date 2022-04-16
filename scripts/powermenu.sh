#!/usr/bin/env bash


rofi_command="rofi -theme ~/.config/rofi/menu/powerlayout.rasi"
uptime=$(uptime -p | sed -e 's/up //g')

# Options
shutdown=" Shutdown"
reboot=" Restart"
lock=" Lock"
suspend=" Sleep"
logout="  Logout"

# Variable passed to rofi
options="$shutdown\n$reboot\n$lock\n$suspend\n$logout"

chosen="$(echo -e "$options" | $rofi_command -p "UP - $uptime" -dmenu -selected-row 2)"
case $chosen in
    $shutdown)
        systemctl poweroff
        ;;
    $reboot)
        systemctl reboot
        ;;
    $lock)
        if [[ -f /usr/bin/i3lock ]]; then
                i3lock
        elif [[ -f /usr/bin/betterlockscreen ]]; then
                betterlockscreen -l
        fi
        ;;
    $suspend)
        mpc -q pause
        amixer set Master mute
        systemctl suspend
        ;;
    $logout)
        i3exit logout
        ;;
esac

