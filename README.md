
# Auto Script, By SSHINJECTOR.NET
=================================================================================

# debian7.sh
```
wget https://raw.githubusercontent.com/naharmc/refund/master/debian7.sh && chmod +x ./debian7.sh && ./debian7.sh
```
# OPENVPN
```
wget -O openvpn.sh https://raw.githubusercontent.com/join-x/y/debian7/openvpn.sh && chmod +x openvpn.sh && ./openvpn.sh
```
# TERIMA KASIH YA ALLAH SWT ATAS SEMUANYA
=================================================================================

DELETEUSER OTOMATIS

```
wget https://raw.githubusercontent.com/wilkingdead/setup4/master/config/deleteuserexpire.sh
```

```
wget https://raw.githubusercontent.com/wilkingdead/setup2/master/config/userban.sh
```

# crontab -e
```
* * * * * sudo bash ~/deleteuserexpire.sh > /dev/null 2>&1
```

```
* 2 * * * sudo bash ~/userban.sh > /dev/null 2>&1
```
