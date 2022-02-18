#!/bin/bash
# > /etc/exim4/exim4.conf
# > /etc/exim4/conf.d/acl/*
# > /etc/exim4/conf.d/auth/*
# > /etc/exim4/conf.d/main/*
# > /etc/exim4/conf.d/rerty/*
# > /etc/exim4/conf.d/rewrite/*
# > /etc/exim4/conf.d/router/*
# > /etc/exim4/conf.d/transport/*
#skrypt do zaawansowanej konfiguracji exim4
    #skrypt po zakończonej konfiguracji danej opcji tworzy plik bezpieczeństwa (sendmir$opcja)
    #zapobiega on 
#chcac edytowac wiecej niz 1 plik na raz i a mniej niz wszystkie
    #konieczna jest edycja playbooku
#wybierz ktore pliki / cesz konfigurowac (wpisz numer w "")
opcja="1"
#1 - /etc/exim4/update.conf.conf
#2 - /etc/exim4/conf.d/acl
#3 - /etc/exim4/conf.d/auth
#4 - /etc/exim4/conf.d/main
#5 - /etc/exim4/conf.d/rerty
#6 - /etc/exim4/conf.d/rewrite
#7 - /etc/exim4/conf.d/router
#8 - /etc/exim4/conf.d/transport
#9 - ustaw domene(/etc/hosts)
#10 - wszystko
#11 - debug
#variables w /etc/exim4/update-exim4.conf.conf
    #dc_eximconfig_configtype
    exicf="'" "'"
    #dc_other_hostnames
    dnsnm="" "'"
    hstnm="'" ""
    #dc_readhost
    clint="'" "'"
    #dc_relay_domains
    lchst="'" "'"
    #dc_minimaldns
    mndns="'" "'"
    #dc_relay_nets
    rlnts="'" "'"
    #dc_localdelivery='maildir_home
    lcdlv="'" "'"
#variables w /etc/exim4/conf.d
    #/acl/
        #00_exim4-config_header (Specifies access control lists for incoming SMTP mail)
        cfhd="begin acl"
        #20_exim4-config_local_deny_exceptions (This is used to determine whitelisted senders and hosts.)
        
#ustaw konfiguracje.
case "$opcja" in

1)#/etc/exim4/update.conf.conf
    #jezeli sendmir istnieje
    if [ -e "/etc/exim4/sendmir1" ]
    then 
    #wyjdz
    exit 
    fi
#zresetuj plik konfiguracji 
    rm -rf /etc/exim4/update-exim4.conf.conf
    touch /etc/exim4/update-exim4.conf.conf
#wstaw variables w plik
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
#plik bezpieczenstwa (Safety File)
touch /etc/exim4/sendmir1
;;
2)#/etc/exim4/conf.d/acl
#jezeli sendmir istnieje
    if [ -e "/etc/exim4/sendmir2" ]
    then 
    #wyjdz
    exit 
    fi
#zresetuj plik konfiguracji 
    rm -rf /etc/exim4/acl/*
    touch /etc/exim4/acl/20_exim4-config_local_deny_exceptions /etc/exim4/acl/30_exim4-config_check_mail /etc/exim4/acl/00_exim4-config_header
    touch /etc/exim4/acl/30_exim4-config_check_rcpt /etc/exim4/acl/40_exim4-config_check_data
#wstaw variables w plik
        #00_exim4-config_header
        echo "$cfhd" >> /etc/exim4/acl/00_exim4-config_headeR
        
#SF
touch /etc/exim4/sendmir2
;;
9)#/etc/hosts
#jezeli sendmir istnieje
    if [ -e "/etc/exim4/sendmir9" ]
    then 
    #wyjdz
    exit 
    fi
#
