# sendimir
SMTP service configuration and test suite
  #introduction
  Sendmir consists of playbooks, which are executing setup and test maintanance scripts for mail software
   #exim4-install-config(ic.sh)
   this script prefonfigures exim 4 and installs it via apt on that confiuration
   #ex4config(ex4config.sh)
   this script sets up major config files in exim4, also features "sendmir files" as a form of 
   redoing protection
   #sendmir-remove
   playbook, used to remove all sendmir files in case when redoing confiuration is needed
