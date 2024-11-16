# Updateskript für die dxlAPRS Toolchain

Wenn man die dxlAPRS Toolchain sauber installiert hat, gibt es unter anderem
folgende Ordner im System:

* /dxlAPRS/
* /dxlAPRS/aprs/  (Binaries der Toolchain)
* /dxlAPRS/aprsmap/  (Binary für APRSMAP)

Idealerweise liegen diese Ordner und Files im Home-Ordner ~/

Dieses Updateskript holt die aktuellsten Versionen der Binärdateien direkt vom
Server des Entwicklers Chris OE5DXL und legt sie in die passenden Ordner auf
dem System. Im Zielornder sollte bereits eine Grundinstallation vorhanden sein,
da sonst die neuen Dateien nicht die richten Berechtigungen haben!

Wichtiger Hinweis: Gelegentlich legt Chris auch aktuelle Beta-Versionen auf
seine Server. Diese sollten natürlich auch funktionieren. Doch kann es ab und
zu mal dazu kommen, das noch ein Bug enthalten ist! Bitte nach einem Update
immer die Funktionalität prüfen und Probleme bitte direkt an Chris melden.

Der Speicherpfad des /dxlAPRS Ordners muss im Updateskript angegeben werden
($DXLHOME), damit die neuen Dateien am richtigen Ort landen. Es werden nur dann
neue Programmversionen geladen, wenn die auf dem Server befindliche Versionen
einen neueren Datumsstempel haben als die Versionen auf dem eigenen System!

Ebenfals muss angegeben werden, welche Architektur man benötigt ($ARCH)
Zur Verfügung stehen nur:
* armv7 (Raspberry Pi ab Version 2, 32 bit)
* aarch64 (Raspberry Pi ab Version 2, 64 bit)
* x86-32 (PC 32 bit)
* x86-64 (PC 64 bit)

Es muss außerdem vorher ausgewählt werden, aus welcher Quelle sich das Skript
die Programmdateien zieht ($SOURCE). Folgende Quellen gibt es:
* Internet HTTP
* Internet HTTPS (Standard)
* Hamnet HTTP

Alle Quellen befinden sich auf dem gleichen Server und werden nur über
unterschiedliche Adressen/URLs angesprochen. Bei der HTTPS Variante verwendet
Chris ein selbstsigniertes Zertifikat, was dazu führt das wget Fehlermeldungen
beim Zertifikat anzeigt. Beim Aufruf von wget wird angegeben, dass das 
Zertifikat nicht geprüft werden soll. Jedoch wird in der Bildschirmausgabe
trotzdem ein Warnhinweis angezeigt. Dieser kann jedoch ignoriert werden.

Hinweis: Chris OE5DXL ändert gelegentlich mal den Port für die Internet-HTTP
Verbindung. Änderungen werden im dxlWiki bekannt gegeben:
https://dxlwiki.dl1nux.de


* Stand: 16.11.2024
* Attila Kocis, DL1NUX
* attila@dl1nux.de
