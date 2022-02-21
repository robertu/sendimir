#pobierz paczke
wget https://github.com/iredmail/iRedMail/archive/refs/tags/1.5.1.tar.gz
#wypakuj
tar -xvf 1.5.1.tar.gz
#pobierz konfiguracje
cat config2 >> iRedmail-1.5.1/config
#zainstaluj
cd iRedMail-1.5.1/

    AUTO_USE_EXISTING_CONFIG_FILE=y \
    AUTO_INSTALL_WITHOUT_CONFIRM=y \
    AUTO_CLEANUP_REMOVE_SENDMAIL=y \
    AUTO_CLEANUP_REPLACE_FIREWALL_RULES=y \
    AUTO_CLEANUP_RESTART_FIREWALL=y \
    AUTO_CLEANUP_REPLACE_MYSQL_CONFIG=y \
    
bash iRedMail.sh
