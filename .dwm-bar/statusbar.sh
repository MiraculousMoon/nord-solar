#!/bin/bash
#!/bin/sh -e
#  _____ _        _             _
# /  ___| |      | |           | |
# \ `--.| |_ __ _| |_ _   _ ___| |__   __ _ _ __
#  `--. | __/ _` | __| | | / __| '_ \ / _` | '__|
# /\__/ | || (_| | |_| |_| \__ | |_) | (_| | |
# \____/ \__\__,_|\__|\__,_|___|_.__/ \__,_|_|
#
# MODDWM STATUSBAR - Modular Dynamic Window Manager Statusbar Gruvbox Flavour.
# ----------------------------------------------------------------------------
#  "THE BEER-WARE LICENSE" (Revision 42):
#  Plasmoduck <plasmoduck@gmail.com> wrote this file.  As long as you retain this notice you
#  can do whatever you want with this stuff. If we meet some day, and you think
#  this stuff is worth it, you can buy me a beer in return - Plasmoduck.
# ---------------------------------------------------------------------------- 

playing () {
	mpc -h /usr/home/cjg/.mpd/socket | awk 'NR==1 {song = $0} NR==2 {if ($1 == "[playing]") p=1; sub(/.*\//, "")} END {printf("%s %s\n", p?"^c#83A598^ ^c#a89984^":"^c#CE9BA9^ ^c#a89984^", song)}' 
}

memory (){
	free | awk '(NR == 18) {print $6}'
}

cpu (){	
	vmstat | awk 'NR==3 {print $(NF-2)}'
}

drive (){
	df -h | grep '/$' | awk '{print $5}'
}

cpu_temp (){
	sysctl dev.cpu.0.temperature | sed -e 's|.*: \([0-9]*\).*|\1|'
}

volume (){
	mixer -s vol | grep -Eo '[0-9]+$'
}

battery()
{
apm -l
}

print_date (){
	date "+%H:%M"
}

wifi (){
#        ifconfig wlan0 | grep ssid | cut -w -f 3
        ifconfig wlan0 | grep txpower | cut -w -f 3
}

while true
do
    xsetroot -name "^b#322F2E^^c#FB4934^ ^c#D5C4A1^$(cpu)% ^c#E78A4E^ ^c#D5C4A1^$(cpu_temp)° ^c#FABD2F^ ^c#D5C4A1^$(memory) ^c#B8BB26^ ^c#D5C4A1^$(drive) ^c#83A598^ ^c#D5C4A1^$(volume)% ^c#8EC07C^ ^c#D5C4A1^$(battery)% ^c#D3869B^ ^c#D5C4A1^$(print_date) ^c#665C54^^c#D5C4A1^$(wifi)%"
	sleep 30
done
