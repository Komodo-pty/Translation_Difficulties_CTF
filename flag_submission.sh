#!/bin/bash

echo -e "Enter the value of the flag you recovered:\n"
read flag

answer=$(echo -n "$flag" | sha1sum | awk -F ' ' '{print $1}')

if [[ "$answer" == "2290288f56db44ff0afe6c4fddf2c3dcf0571d72" ]]; then
  echo -e "\n[+] Correct!"
else
  echo -e "\n[x] Incorrect\n\n[?] Do you want a hint? y/N"
  read hint
  if [[ "$hint" == "y" || "$hint" == "Y" ]]; then
    echo "SGludDogRW5zdXJlIHlvdSBhc3NlbWJsZWQgdGhlIHNjcmlwdCBwcm9wZXJseS4gSWYgaXQncyBub3QgaW4gdGhlIGNvcnJlY3Qgb3JkZXIsIHRoZSByZXR1cm5lZCBmbGFnIHdpbGwgYmUgaW5jb3JyZWN0Cg==" | base64 -d
  fi
fi
