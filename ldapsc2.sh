#!/bin/bash

USERNAME="localuser"
LDIF="/root/test.ldif"
DN="cn=admin,dc=itnsaskills,dc=cloud"
PASSWD="Skill39"
OU="MISC"

ldapadd -xD $DN -f $LDIF -w $PASSWD
for i in {22..23}; do
echo "dn: cn=localuser$i,ou=$OU,dc=itnsaskills,dc=cloud" > $LDIF
echo "objectClass: inetOrgPerson" >> $LDIF
echo "objectClass: posixAccount" >> $LDIF
echo "objectClass: shadowAccount" >> $LDIF
echo "uid: $USERNAME$i" >> $LDIF
echo "homeDirectory: /home/localuser$i" >> $LDIF
echo "sn: USERNAME$i" >> $LDIF
echo "uidNumber: 100$i" >> $LDIF
echo "gidNumber: 100$i" >> $LDIF
echo "mail: $USERNAME$i@itnsaskills.cloud" >> $LDIF
echo "loginShell: /bin/bash" >> $LDIF
echo "userPassword: {SSHA}$PASSWD" >> $LDIF
done
