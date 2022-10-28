#! /bin/bash

GRN='\033[0;32m'
NC='\033[0m'

echo -e "\t#######################################################"
echo -e "       #                  ${GRN}macOS mini toolkit.${NC}                #"
echo -e "      #######################################################"

while :
do
echo -ne "Choose your option:\n 1. Show desktop icons.\n 2. Hide desktop icons.\n 3. Disable Gatekeper.\n 4. Enable Gatekeeper.\n 5. Use this if method 4 & 5 can not help you.\n 6. Quit.\n"

echo -e "Enter your choice: "
read OPTION

case $OPTION in 

1)
	Defaults write com.apple.finder CreateDesktop true
	killall Finder
	;;
2)
	Defaults write com.apple.finder CreateDesktop false
	killall Finder
	;;
3)
	sudo spctl --master-disable
	echo -e "Disable successful!\n"
	;;
4)
	sudo spctl --master-enable
	echo -e "Enable successful!\n"
	;;
5)
	echo "DRAG YOUR FILE HERE THEN HIT RETURN: "
	read FILEPATH
	xattr -cr "$FILEPATH"
	;;
6)
	break
	;;
esac
done
echo -e "\t#######################################################"
echo -e "Developed by ${GRN}xuanvietit${NC}"
echo -e "Contact me if there is any problem: ${GRN}hxv1305@gmail.com${NC}"
echo -e "Cheer mates!\n\n"