#!/bin/bash
#pobierz paczke
wget https://github.com/iredmail/iRedMail/archive/refs/tags/1.5.1.tar.gz
#wypakuj
tar -xvf 1.5.1.tar.gz
#przenieś
mv iRedMail-1.5.1 /home/$USER
#pobierz konfiguracje
cat /tmp/config2 >> /home/$USER/iRedmail-1.5.1/config
#zainstaluj
cd /home/$USER/iRedMail-1.5.1/
    #ustaw variables do cichej instalacji
export AUTO_USE_EXISTING_CONFIG_FILE=y \
export AUTO_INSTALL_WITHOUT_CONFIRM=y \
export AUTO_CLEANUP_REMOVE_SENDMAIL=y \
export AUTO_CLEANUP_REPLACE_FIREWALL_RULES=y \
export AUTO_CLEANUP_RESTART_FIREWALL=y \
export AUTO_CLEANUP_REPLACE_MYSQL_CONFIG=y \
    
bash iRedMail.sh #odpal skrypt instalacyjny
