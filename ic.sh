#bin/bash
#Skrypt instalujący i konfigurujący wstępnie exim4 i SMTP
#preconfig
c="'"
apt update 
#ważniejsze variables w /etc/exim4/update-exim4.conf.conf
    #dc_eximconfig_configtype
    exicf="'"internet"'"
    #dc_other_hostnames
    dnsnm="'"$(dnsdomainname -a)"'"
    hstnm="'"$(hostname)"'"
    #dc_readhost
    clint="'"192.168.33.14"'"
    #dc_relay_domains
    lchst="'"$(hostname)"'"
    #dc_minimaldns
    mndns="'"false"'"
    #dc_relay_nets
    rlnts="'"cgi.com"'"
    #dc_localdelivery='maildir_home
    lcdlv="'"maildir_home"'"
#ustaw konfiguracje
echo "dc_eximconfig_configtype=$exicif\dc_other_hostnames=$hstnm.$dnsnm\dc_local_interfaces=127.0.0.1 ; ::1\dc_readhost=$clint\dc_relay_domains=$lchst\dc_minimaldns=$mndns\dc_relay_nets=$rlnts\dc_smarthost=''\CFILEMODE='644'\dc_use_split_config='false'\dc_hide_mailname=''\dc_mailname_in_oh='true'\dc_localdelivery='maildir_home$lcdlv" | /etc/exim4/update-exim4.conf.conf
#zainstaluj exim4 na konfiguracji
apt install exim4
