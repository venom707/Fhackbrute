#!/system/bin/env bash
# Coding by Hackylu'x Fondateur of InformaTutos 

#---type de couleur 

R='\033[1;31m'
G='\033[1;32m'
Y='\033[1;33m'
B='\033[1;34m'
M='\033[1;35m'
C='\033[1;36m'
W='\033[0m'
echo $(clear)
echo "        "
    printf "$C"
    echo "#------   FHACKBRUTE INSTALLATION  ------#"
    echo "#                                        #"
    echo "#            Nous ne sommes pas          #"
    echo "#         Responsable de vos actes !     #"
    echo "#                                        #"
    echo "#-Penser à utiliser un mot de passe fort-#"
    echo "#       C'est le but de ce Programme     #"
    echo "#                                        #"
    echo "#-----------Coding by Hackylu'x----------#"
    printf "$W"
echo " "
#connaitre l'architecture de la machine 
arch=$(uname -m)
if [ $arch = "x86_64" ]; then
    printf "$B Mise à jour et mise à niveau \n$W" 
    sudo apt-get update && apt-get upgrade > install.log
    printf "$B Installation des Modules ! \n $W"
    pip3 install requests >> install.log
    pip3 install mechanicalsoup
elif [ $arch = "x86" ]; then
    printf "$B Mise à jour et mise à niveau \n$W" 
    sudo apt-get update && apt-get upgrade > install.log
    printf "$B Installation des Modules ! \n $W"
    pip3 install requests >> install.log
    pip3 install mechanicalsoup
else 
    printf "$B Mise à jour et mise à niveau \n$W"
    pkg update && pkg upgrade > install.log
    printf "$B Installation des dépendances  \n$W"
    pkg install python >> install.log
    pkg install libxml2 >> install.log
    pkg install libxml2-dev >> install.log
    pkg install libxml2-utils >> install.log
    pkg install python-dev >> install.log
    pkg install libxslt-dev >> install.log
    pkg install clang >> install.log
    pip install mechanicalsoup >> install.log
    pip install requests >> install.log
fi
echo "Dépendances installées avec succès ! "
sleep 2
printf "$Y Démarrage du Programme Patientez-vous ! $W "
sleep 2
#-------------------------------------
python3 fbhack.py
