#!/bin/bash

echo -e "\033[0;90mDo you want the necessary tools installed: \033[0m\c"
read qa
if [ "$qa" = "Y" ];
then
	echo -e "\033[0;91mInstalling Required Tools Please wait...\033[0m"
	apt install exiftool -y &>/dev/null &
	sleep 2
	apt install steghide -y &>/dev/null &
	sleep 2
	apt  install stegcracker -y &>/dev/null &
	sleep 2
	apt install hashid -y &>/dev/null &
	sleep 2
	apt install pdfcrack -y &>/dev/null &
	sleep 2
	apt install binwalk	-y &>/dev/null &
	sleep 2
	apt install hexedit -y &>/dev/null &
	sleep 2
	apt-get install build-essential libssl-dev -y &>/dev/null &
	sleep 2
	apt install john -y &>/dev/null &
	echo -e "\033[1;94mInstallation Complete You are being redirected...\033[0m"
else
	echo "Please wait"
fi
clear
function menu () {
echo -e "\033[1;31m
   ▄████████     ███        ▄████████    ▄██████▄  ███    █▄      ███        ▄█    █▄    
  ███    ███ ▀█████████▄   ███    ███   ███    ███ ███    ███ ▀█████████▄   ███    ███   
  ███    █▀     ▀███▀▀██   ███    █▀    ███    █▀  ███    ███    ▀███▀▀██   ███    ███   
  ███            ███   ▀  ▄███▄▄▄      ▄███        ███    ███     ███   ▀  ▄███▄▄▄▄███▄▄ 
▀███████████     ███     ▀▀███▀▀▀     ▀▀███ ████▄  ███    ███     ███     ▀▀███▀▀▀▀███▀  
         ███     ███       ███    █▄    ███    ███ ███    ███     ███       ███    ███   
   ▄█    ███     ███       ███    ███   ███    ███ ███    ███     ███       ███    ███   
 ▄████████▀     ▄████▀     ██████████   ████████▀  ████████▀     ▄████▀     ███    █▀    
                                                                                     
\033[1m"
printf "%*s" $COLUMNS |tr " " "-"
echo -e "\033[1;36mTools:					Online:
	[1]Hashid				[8]ZipCracker
	[2]Steghide				[9]CyberChef
	[3]Exiftool				[10]Forensically
	[4]Stegcracker				[11]Hashes.com
	[5]Binwalk				[12]Steganography Online
	[6]PDFCracker				[13]Cipher Identifier
	[7]Hexedit				[14]Aperi'Solve
	\033[1m
\033[1;32m#~: \033[0m\c
"
read men1
case $men1 in
	"1")
	clear
	echo -e "\033[1;31mEnter Hash Value: \033[0m\c"
	read has
	hashid $has
	;;
	
	"2")
	clear
	echo -e "\033[1;31mEnter Image File Path\033[0m"
	read im
	steghide extract -sf $im
	;;
	
	"3")
	clear
	echo -e "\033[1;31mEnter Image File Path\033[0m"
	read exi
	exiftool $exi
	;;
	
	"4")
	clear
	echo -e "\033[1;31mEnter the Path of the Image File you want to break\033[0m"
	read steg
	stegcracker $steg
	;;
	
	"5")
	clear
	echo -e "\033[1;31mEnter Image File Path\033[0m"
	read bin
	binwalk -e $bin --run-as=root
	;;
	
	"6")
	clear
	echo -e "\033[1;31mEnter Image File Path\033[0m"
	read pdf
	pdf2john $pdf
	;;
	
	"7")
	clear
	echo -e "\033[1;31mEnter Image File Path\033[0m"
	read path
	hexeditor $path
	;;

	"8")
	clear
	echo -e "\033[1;31mEnter the zip file you want to crack\033[0m"
	read zip
	zip2john $zip > hash_file
	sleep 5
	echo -e "\033[1;31mEnter wordlist to crack the zip file\033[0m"
	read wlist
	john hash_file --wordlist=$wlist
	;;
	
	"9")
	firefox https://gchq.github.io/CyberChef/
	;;
	
	"10")
	firefox https://29a.ch/photo-forensics/#level-sweep
	;;
	
	"11")
	firefox https://hashes.com/en/decrypt/hash
	;;
	
	"12")
	firefox https://stylesuxx.github.io/steganography/
	;;
	
	"13")
	firefox https://www.boxentriq.com/code-breaking/cipher-identifier#atbash-cipher
	;;
	
	"14")
	firefox https://aperisolve.fr/
	;;
	
	*)
	echo -e "\033[0;93mYou Made a Wrong Key !!!\033[0m"
	echo -e "Click 0 to Return to the Menu"
	read back
	while [[ $back == 0 ]]
	do
		if [[ $back == 0 ]]
		then
			clear
			menu
		else
			echo "Checking Out..."
		fi
	done
	;;
esac
}
menu
printf "%*s" $COLUMNS |tr " " "="
function loop (){
	lop=0
	while [ $lop -eq 0 ]
	do
		echo -e "\033[31mClick 0 to Return to the Main Menu:\c \033[0m" 
		read st
		if [[ $st == 0 ]]
		then
			clear
			menu
		fi
	done
}
loop

