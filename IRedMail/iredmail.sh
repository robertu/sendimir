#pobierz paczke
wget https://github.com/iredmail/iRedMail/archive/refs/tags/1.5.1.tar.gz
#wypakuj
tar -xvf 1.5.1.tar.gz
#pobierz konfiguracje
cat config2 >> iRedmail-1.5.1/config
#zainstaluj
cd iRedMail-1.5.1/
./iRedMail.sh
