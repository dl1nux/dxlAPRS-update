#!/bin/sh
# Skript von Attila Kocis, DL1NUX (attila@dl1nux.de)
# Dieses Skript aktualisiert die dxlAPRS Binaries direkt vom Server des 
# Entwicklers Chris OE5DXL. Der Server ist über verschiedene Wege erreichbar.

# Bitte in der Variable DXLHOME den Ordner eintragen, wo sich der Hauptordner
# "dxlAPRS" derzeit befindet.
DXLHOME=/home/pi

# Bitte in der Variable ARCH die Architektur eintragen, die benötigt wird.
#   Zur verfügung stehen: armv7hf (RaspberryPi 2B und neuer)
#                         x86-32  (32 bit PC Systeme)
#                         x86-64  (64 bit PC Systeme)
ARCH=armv7hf

# Bitte für die Variable SOURCE die Updatequelle auswählen (auskommentieren)
# Internet HTTPS:
#SOURCE=https://oe5dxl.hamspirit.at:8024/aprs/bin/
# Internet HTTP:
SOURCE=http://oe5dxl.hamspirit.at:8025/aprs/bin/
# Hamnet HTTP:
#SOURCE=http://oe5dxl.ampr.at/aprs/bin/

echo "Dieses Skript aktualisiert die dxlAPRS Binaries aus der Quelle:"
echo $SOURCE
echo ""
echo "Bitte vor dem Ausführen die Variablen DXLHOME, ARCH und SOURCE im Skript kontrollieren und ggf. anpassen."
echo "Hinweis: Zum Aktualisieren von AFSKMODEM werden root Rechte benötigt!"
echo ""
echo "ENTER für weiter, STRG+C zum Abbrechen..."
read continue

cd $DXLHOME/dxlAPRS/aprs

wget -N --no-check-certificate $SOURCE$ARCH/adsb2aprs
sudo wget -N --no-check-certificate $SOURCE$ARCH/afskmodem
wget -N --no-check-certificate $SOURCE$ARCH/fmrepeater
wget -N --no-check-certificate $SOURCE$ARCH/gps2aprs
wget -N --no-check-certificate $SOURCE$ARCH/gps2digipos
wget -N --no-check-certificate $SOURCE$ARCH/l2cat
wget -N --no-check-certificate $SOURCE$ARCH/profile
wget -N --no-check-certificate $SOURCE$ARCH/radiorange
wget -N --no-check-certificate $SOURCE$ARCH/sdrradio
wget -N --no-check-certificate $SOURCE$ARCH/sdrtst
wget -N --no-check-certificate $SOURCE$ARCH/sondemod
wget -N --no-check-certificate $SOURCE$ARCH/sondeudp
wget -N --no-check-certificate $SOURCE$ARCH/udpbox
wget -N --no-check-certificate $SOURCE$ARCH/udpflex
wget -N --no-check-certificate $SOURCE$ARCH/udpgate4
wget -N --no-check-certificate $SOURCE$ARCH/udphub

cd $DXLHOME/dxlAPRS/aprsmap

wget -N --no-check-certificate $SOURCE$ARCH/aprsmap

cd ~

echo "Übertragung abgeschlossen."
echo "Dateien in $DXLHOME/dxlaprs/aprs und $DXLHOME/dxlaprs/aprsmap wurden aktualisiert."
echo ""