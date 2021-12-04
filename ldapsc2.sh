#!/bin/bash

for i in {22..23}; do
echo "dn: uid=localuser$i,ou=$OU,dc=itnsaskills,dc=cloud" >> file.ldif
echo "objectClass: inetOrgPerson" >> file.ldif
echo "objectClass: posixAccount" >> file.ldif
echo "objectClass: shadowAccount" >> file.ldif
echo "cn: localuser$i" >> file.ldif
echo "sn: localuser$i" >> file.ldif
echo "uidNumber: 200$i" >> file.ldif
echo "gidNumber: 200$i" >> file.ldif
echo "homeDirectory: /home/localuser$i" >> file.ldif
echo "mail: localuser$i@itnsaskills.cloud" >> file.ldif
echo "loginShell: /bin/bash" >> file.ldif
echo "userPassword: password_string" >>file.ldif
done
