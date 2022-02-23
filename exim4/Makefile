all:
	echo
sudo:
	echo "4xPOGf8lZL6tlqos" | su
wstaw plik konfiguracji: sudo
	cat update-exim4.conf.conf >> /etc/exim4/update-exim4.conf.conf
usun postfix: sudo
	echo | apt purge postfix
zainstaluj exim i wprowadź zmiany w konfiguracji: wstaw plik konfiguracji
	apt install exim4
	update-exim4.conf
	systemctl eximm4.service enable
	systemctl reboot
