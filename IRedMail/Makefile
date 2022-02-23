all:
echo 	
pobierz iRedMail.sh:
	touch /home/$$USER/sendmirI
	wget https://github.com/iredmail/iRedMail/archive/refs/tags/1.5.1.tar.gz
	tar -xvf 1.5.1.tar.gz
sendmir: pobierz iRedMail.sh
	ifeq (,$(wildcard /home/$$USER/sendmirI)) 
		exit 
	endif
zacznij insalacje iRedMail: sendmir
	echo 4xPOGf8lZL6tlqos | sudo ./iredmail.sh
#
