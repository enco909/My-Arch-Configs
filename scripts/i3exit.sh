#!/usr/bin/env bash

lock() {
    #  killall compton
    $HOME/.config/i3lock/i3lock.sh
    #  compton -b
}

case "$1" in
    lock)
        lock
        ;;
    logout)
        i3-msg exit
        ;;
    suspend)
        systemctl suspend
        ;;
    hibernate)
        systemctl hibernate
        ;;
    reboot)
        reboot
        ;;
    shutdown)
        poweroff
        ;;
    *)
        echo "Usage: $0 [lock|logout|suspend|hibernate|reboot|shutdown]"
        exit 2
esac

exit 0
