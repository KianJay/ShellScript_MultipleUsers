#!/bin/bash

echo -n "Enter Username : "
read BASENAME

echo -n "Start number : "
read STARTNUM

echo -n "User count : "
read COUNT

(( COUNT-- ))
# (( COUNT=COUNT-1 ))

for i in `seq 0 $COUNT`
do
	USERNAME="$BASENAME`expr $STARTNUM + $i`"
	useradd $USERNAME && echo "$USERNAME user created..."
	echo "P@ssw0rd" | passwd --stdin $USERNAME && echo "$USERNAME password set to P@ssw0rd"
done
