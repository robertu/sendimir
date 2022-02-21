#!/bin/bash
# > /etc/exim4/exim4.conf.conf
#skrypt do zaawansowanej konfiguracji exim4
    #skrypt po zakończonej konfiguracji danej opcji tworzy plik bezpieczeństwa (sendmir$opcja)
    #zapobiega on niepotrzebnej rekonfiguracji 
#chcac edytowac wiecej niz 1 plik na raz i a mniej niz wszystkie
    #konieczna jest edycja playbooku
#wybierz ktore części pliku update-exim4.conf.conf/ chesz konfigurowac (wpisz numer w "")
opcja="2"
#1 - /etc/exim4/update.conf.conf
#2 - update-exim4.conf.conf podmiana pliku
#3 - ustaw domene(/etc/hosts)
#etc/hosts
host1=""
host2=""
host3=""
host4=""
host5=""
host6=""
host7=""
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
        cldn1=""
        cldn2=""
        cldn3=""
        cldn4=""
        cldn5=""
        cldn6=""
        cldn7=""
        cldn8=""
        cldn9=""
        cldn10=""
        cldn11=""
        cldn12=""
        cldn13=""
        cldn14=""
        cldn15=""
#ustaw konfiguracje.
case "$opcja" in

1)#/etc/exim4/update.conf.conf
    #jezeli sendmir istnieje
    if [ -e "/etc/exim4/sendmir1" ]
    then 
    #wyjdz
    exit 
    fi
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

2)#config 
#jezeli sendmir istnieje
    if [ -e "/etc/exim4/sendmir2" ]
    then 
    #wyjdz
    exit 
    fi
#wstaw variables w plik
   cat update-exim4.conf.conf >> /etc/exim4/update-exim4.conf.conf
#SF
touch /etc/exim4/sendmir2
;;
3)#/etc/hosts
#jezeli sendmir istnieje
    if [ -e "/etc/exim4/sendmir3" ]
    then 
    #wyjdz
    exit 
    fi
#wprowadź konfigurację 
    echo "$host1" >> /etc/hosts
    echo "$host2" >> /etc/hosts
    echo "$host3" >> /etc/hosts
    echo "$host3" >> /etc/hosts
    echo "$host4" >> /etc/hosts
    echo "$host5" >> /etc/hosts
    echo "$host6" >> /etc/hosts
    echo "$host7" >> /etc/hosts
#SF
touch /etc/exim4/sendmir3
esac
#zainstaluj exim4 na konfiguracji
apt install exim4
#ostatecznie zaaplikuj zmiany
update-exim4.conf
#autostart exim4
systemctl exim4.service enable
#reboot aby zmiany zostały zaaplikowane
