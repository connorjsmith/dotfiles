#!/bin/bash

# Clock
Clock() {
	DATE=$(date "+%a %b %d, %T")
	echo -n "$DATE"
}
Workspace(){
	cur=`xprop -root _NET_CURRENT_DESKTOP | awk '{print $3}'`
	echo $cur
}
Wifi(){
    QUAL=`iwconfig wlan0 | grep 'Link Quality=' | awk '{gsub(/[=/]/," "); print $3"'`
    MAX=`iwconfig wlan0 | grep 'Link Quality=' | awk '{gsub(/[=/]/," "); print $4"'`
    PERC=`echo $QUAL*100/$MAX | bc`
    icon=""
    case $PERC in
        [0-4])
            icon="1"
        ;;
        [4-9])
            icon="2"
        ;;
        [2-3]*)
            icon="3"
        ;;
        [4-5]*)
            icon="4"
        ;;
        [6-7]*)
            icon="5"
        ;;
        *)
            icon="6"
        ;;
    esac
    echo $icon
}
while true; do
    echo "$(Workspace) %{r}%{Fwhite}%{Bblack} $(Wifi) $(Clock)%{F-}"
	sleep 0.1;
done
