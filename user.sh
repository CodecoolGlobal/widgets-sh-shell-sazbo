#!/bin/bash
FILENAME="/etc/passwd"
count=0
while IFS=: read -r username password userid groupid comment homedir cmdshell
do
  #echo "$username, $userid, $comment $homedir"
  if [ "$userid" -ge 1000 ]
  then
      ((count++))
  fi
done < $FILENAME

echo "Number of non-system users: $count"
echo "Number of groups: $(groups | wc -w)"

