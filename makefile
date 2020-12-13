PWD := $(shell pwd)
LILY_FILES := /home/metaxis/records/scores
LY2VIDEO_PATH := /home/metaxis/sources/python/ly2video
BASE_PATH := /opt/lily
SCORE_PATH := ${BASE_PATH}/scores


convert:
	ly2video -i Greensleeves_2.ly -q 1 -s -f 60 -r 300 -p 2,3 -t --ttf ${PWD}/Montserrat-Regular.ttf -x 1920 -y 1080

build:
	SCORE_PATH=${SCORE_PATH} BASE_PATH=${BASE_PATH} docker-compose -p ly2video -f ${LY2VIDEO_PATH}/docker-compose.yml up --build

run:
	docker run -it -v ${LILY_FILES}:/opt/lily/scores ly2video

.PHONY:
	build
	convert
	run
