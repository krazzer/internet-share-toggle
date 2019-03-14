set wifiStatus to do shell script "networksetup -getairportpower en1"

if wifiStatus is "Wi-Fi Power (en1): On" then
	do shell script "networksetup -setairportpower en1 off && networksetup -setnetworkserviceenabled 'Internet share toggle' off"
else
	do shell script "networksetup -setairportpower en1 on && networksetup -setnetworkserviceenabled 'Internet share toggle' on"
end if