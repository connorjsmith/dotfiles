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
while true; do
	echo "$(Workspace) %{r}%{Fwhite}%{Bblack} $(Clock)%{F-}"
	sleep 1;
done
