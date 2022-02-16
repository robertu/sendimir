#bin/bash
#Skrypt instalujący i konfigurujący wstępnie exim4 i SMTP
#preconfig
c="'"
#apt update 
#ważniejsze variables w /etc/exim4/update-exim4.conf.conf
    #dc_eximconfig_configtype
    exicf="'"internet"'"
    #dc_other_hostnames
    dnsnm=""$(dnsdomainname)"'"
    hstnm="'"$(hostname)""
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
#ustaw konfiguracje.
rm -r /etc/exim4/update-exim4.conf.conf
echo "dc_eximconfig_configtype=$exicf" >> /etc/exim4/update-exim4.conf.conf
echo "dc_other_hostnames=$hstnm.$dnsnm" >> /etc/exim4/update-exim4.conf.conf
echo "dc_local_interfaces='127.0.0.1 ;::1'" >> /etc/exim4/update-exim4.conf.conf
echo "dc_readhost=$clint" >> /etc/exim4/update-exim4.conf.conf
echo "dc_relay_domains=$lchst" >> /etc/exim4/update-exim4.conf.conf
echo "dc_minimaldns=$mndns" >> /etc/exim4/update-exim4.conf.conf
echo "dc_relay_nets=$rlnts" >> /etc/exim4/update-exim4.conf.conf
echo "dc_smarthost=''" >> /etc/exim4/update-exim4.conf.conf
echo "CFILEMODE='644'" >> /etc/exim4/update-exim4.conf.conf
echo "dc_use_split_config='false'" >> /etc/exim4/update-exim4.conf.conf
echo "dc_mailname_in_oh='true'" >> /etc/exim4/update-exim4.conf.conf
echo "dc_localdelivery=$lcdlv" >> /etc/exim4/update-exim4.conf.conf
#zainstaluj exim4 na konfiguracjii
#apt install exim4
