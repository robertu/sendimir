#!/bin/bash
    #ustaw variables do cichej instalacji
export AUTO_USE_EXISTING_CONFIG_FILE=y \
export AUTO_INSTALL_WITHOUT_CONFIRM=y \
export AUTO_CLEANUP_REMOVE_SENDMAIL=y \
export AUTO_CLEANUP_REPLACE_FIREWALL_RULES=y \
export AUTO_CLEANUP_RESTART_FIREWALL=y \
export AUTO_CLEANUP_REPLACE_MYSQL_CONFIG=y \
    
./iRedMail.sh #odpal skrypt instalacyjny
