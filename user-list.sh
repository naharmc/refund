#!/bin/bash
# Created by http://www.sshinjector.net
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
echo "Connecting to sshinjector.net..."
sleep 0.1
echo "Checking Permision..."
sleep 0.2
echo -e "${green}Permission Accepted...${NC}"
sleep 0.5
echo""

if [ -f /etc/debian_version ]; then
	UIDN=1000
elif [ -f /etc/redhat-release ]; then
	UIDN=500
else
	UIDN=500
fi

echo "===============================================";
echo " "
echo "Daftar User yang terdapat di VPS:"
echo "(USERNAME)    -     (EXP DATE)  "
echo "-------------------------------"
while read ceklist
do
        AKUN="$(echo $ceklist | cut -d: -f1)"
        ID="$(echo $ceklist | grep -v nobody | cut -d: -f3)"
        exp="$(chage -l $AKUN | grep "Account expires" | awk -F": " '{print $2}')"
        if [[ $ID -ge $UIDN ]]; then
        printf "%-17s %2s\n" "$AKUN" "$exp"
        fi
done < /etc/passwd
JUMLAH="$(awk -F: '$3 >= '$UIDN' && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"
echo "-------------------------------"
echo "Jumlah Akun : $JUMLAH USER"
echo "-------------------------------"
echo " "
echo "===============================================";
