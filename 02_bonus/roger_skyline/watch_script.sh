#!/bin/bash
cat /etc/crontab > /home/roger/new
DIFF=$(diff new tmp)
if [ "$DIFF" != "" ]; then
	sudo sendmail ROOT@MAIL.com < /home/roger/email.txt
	rm -rf /home/roger/tmp
	cp /home/roger/new /home/roger/tmp
fi
