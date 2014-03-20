Serial_arduino_to_android
=========================

Manuel d'utilisation pour la librairie AndroidSerial for Android.
Cette librairie permet d'activer la communication série arduino <-> android sous processing 4 android.

Prérequis : avoir processing et l'addon android activé avec l'api 10 d'installé

1 - Téléchargez la librairie AndroidSerial-distribution.zip , dézippez l'archive et copiez la dans le repertoire /librairies de votre repertoire de sketchs

2 - Créez votre sketch sous processing, vous pouvez rependre l'exemple basique dans le repertoire /example/processing

3 - Créez votre sketch arduino, vous trouverez aussi un exemple dans le repertoire /example/arduino, uploadez le dans arduino

4 - dans le sketch processing créez l'arborescence suivante /res/xml/

5 - copiez le fichier /fichiers_processing/device_filter.xml dans /res/xml

6 - copiez le /fichiers_processing/manifest.xml à la place de celui généré par processing (a la racine du sketch)

7 - compilez votre programme sous processing, il indiquera une erreur sur le téléphone, c'est normal, il cherche les ports arduino

8 - branchez l'arduino à votre telephone/tablette celui-ci sera automatiquement reconnu

9 - enjoy ;-)
