PWD := $(shell pwd)


convert:
	ly2video -i Greensleeves.ly -q 1 -s -f 60 -r 600 -p 2,3 -t --ttf ${PWD}/Montserrat-Regular.ttf -x 1920 -y 1080
