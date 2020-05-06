#!/bin/bash

show_menus() {
#  clear
  echo "Select the version of Python to run:"
  echo "1) Python 2.7"
  echo "2) Python 3.x"
  echo "3) Quit"
}

read_options(){
	local choice
	read -p "Enter choice [ 1 - 3] " choice
	case $choice in
		1) cp python2/Dockerfile . && cp python2/docker-compose.yml . && docker build -t python2shell . && docker-compose up -d && echo "type python -V and hit enter to test, Ctrl-D to exit shell" && docker exec -it python2shell bash && docker-compose down -t 1;;
		2) cp python3/Dockerfile . && cp python3/docker-compose.yml . && docker build -t python3shell . && docker-compose up -d && echo "type python -V and hit enter to test, Ctrl-D to exit shell" && docker exec -it python3shell bash && docker-compose down -t 1;;
		3) exit 0;;
		*) echo -e "${RED}Error...${STD}" && sleep 2
	esac
}

trap '' SIGINT SIGQUIT SIGTSTP

while true

do

	show_menus
	read_options
done

