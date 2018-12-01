#!/bin/bash
# Created on 23/11/2018
IFS=$'\n\t'
trap ctrl_c 2
function ctrl_c() {
                echo
                printf "$yellow [!]$red Going me on https://t.me/Ivam3$reset
                \n"
}

#Colors
	R='\033[1;31m'
        G='\033[1;32m'
        Y='\033[1;33m'
        B='\033[1;34m'
        M='\033[1;35m'
        C='\033[1;36m'
        W='\033[0m'

function Banner {
		echo $(clear)
        printf "$C"
        	echo "            -{> Youtube-dl <} "
        	echo "   -{ SO > Android - Andrax && Termux } "
        	echo "             -{ Adapted by } "
        	printf "$G"
        	echo "      =============================="
        	echo "      .___.                 ______,"
        	echo "      |   |__ ______   ___  \_____ \ "
        	echo "      |   \ \/ /\__ \ /   \   _(__ <,"
        	echo "      |   |\   / __ \| Y Y \ /      \ "
        	echo "      |___| \_/ (____|__|_| /______ /"
        	echo "                     \/    \/      \/ "
        	echo "      ====== By ___ Cinderella ======"
	printf "$C\n"
        	echo "          [---] Join me on [---]"
        	echo "[-] www.youtube.com/c/ivam3bycinderella [-]"
		echo "      [-] t.me/Ivam3byCinderella [-]"
        	echo "            [-] t.me/ivam3 [-]"
	printf "$R\n"
		echo "          [---] README.md [---]"
	printf "$W"
        	echo " This file will install youtube-dl command"
        	echo "     and repositories needed to run it"
       		echo "         Youtube-dl was coded by"
	printf "$G"
		echo "             *Gabi Tiplea*"
	printf "$R\n"
		echo "          [---] DISCLAIMER [---]"
	printf "$W"
        	echo "   If the law is violated with it's use"
        	echo "     This would be the responsibility"
        	echo "        of the user who handled it"
	printf "$R"
		echo "       [-] Use At Your Own Risk [-]"
	printf "$W\n"
	printf "$C         Press$G ENTER$C to continue"
	printf "$W\n"
	read enter
}
function Termux {
	if [ ! -d ~/youtube ]; then
		cd;git clone https://github.com/ivam3/youtube-dl.git
	fi
	dpkg --configure -a
	apt update && apt -y upgrade
		if [ -d $PREFIX/lib/python3.7/site-packages/youtube_dl ]; then
			yes | pip uninstall youtube_dl
		fi
	printf "\n \n"
	printf "$G INSTALLING YOUTUBE-DL BY GABI TIPLEA
	$W\n"
	sleep 1
	apt install -y util-linux wget curl python python-dev python2
	yes | pip install youtube-dl
	mkdir -p ~/youtube-dl/downloads
	touch ~/youtube-dl/config
	mkdir ~/youtube-dl/bin
	ln -s ~/youtube-dl/bin ~/bin
	chmod 777 ~/youtube-dl/.netrc
	mv ~/youtube-dl/.data/LhDxGbtY ~/youtube-dl/bin/termux-url-opener
	dos2unix ~/youtube-dl/bin/termux-url-opener
	rm -rf ~/youtube-dl/.data
	printf "\n \n"
	thanks
	chao-chao
}
function Andrax {
        if [ -d $PREFIX/lib/python3.7/site-packages/youtube_dl ]; then
                yes | python3 -m pip uninstall youtube_dl
	fi
        printf "\n \n"
        printf "$G INSTALLING YOUTUBE-DL BY GABI TIPLEA
	$W\n"
        sleep 1
        yes | python3 -m pip install youtube-dl
        if [ ! -d ~/youtube-dl ]; then
		rm -rf ~/youtube-dl
	fi
        printf "\n \n"
        thanks
        chao-chao
}
function thanks {
	printf "$C"
	echo "#-----THANKS TO MY MASTER CINDERELLA-----#"
       	echo "#                                        #"
       	echo "#             People don't die           #"
       	echo "#    If they still live in the hearts    #"
       	echo "#           of their loved ones          #"
       	echo "#       We love her ... We miss her      #"
       	echo "#                                        #"
       	echo "#-------------------RIP------------------#"
       	printf "$W\n"
}
function chao-chao {
	printf "$Y Now you can download any video and mp3 using :
	\n"
	printf ":-->$W $ youtube-dl + url$Y"
	printf ":-->$W $ youtube-dl -u <youremail@email.com> -p <your password> + url$Y
	\n"
if [ $DISTRO = "termux" ]; then
	printf "For more details going to community feedback group on Telegram \n\t\t$B >> t.me/Ivam3by_Cinderella
	\n\n"
elif [ $DISTRO = "andrax" ]; then
	printf "For more details going to community feedback group on Telegram \n\t\t$B >> t.me/andraxspanish$W
	\n\n"
fi
}	

Banner
DISTRO=$(echo $HOME | grep -oE '([tadermunx]{6,6})')
if [ $DISTRO=termux ]; then Termux
elif [ $DISTRO=andrax ]; then Andrax
else
	echo $(clear)
	printf "$R O.ops unknown distro \n\n"
	thanks
fi

#				@IbyC
