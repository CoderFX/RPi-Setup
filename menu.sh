#!/bin/bash
function nocase()
{
  if [ "`echo $1 | tr [:lower:] [:upper:]`" = "`echo $2 | tr [:lower:] [:upper:]`" ]
  then
    return 0  # true
  else
    return 1 # false
  fi
}
exit=FALSE
while [ "$exit" = "FALSE" ]
do
  clear
  echo -------------------------------
  echo This is the script named \"menu\"
  echo -------------------------------
  echo -e 'S: Show Network config '
  echo -e 'I: IP Address '
  echo -e 'C: Change Network config'
  echo -e 'N: Change Network Name'
  echo -e 'Q: Quit           '
  echo -n 'You choose > '
  read opt
  if nocase "$opt" "S"
  then
    ./network.status
    echo -n Hit [return]
    read a
  elif nocase "$opt" "I"
  then
    ./ip
    read a
  elif nocase "$opt" "C"
  then
    sudo ./switch
  elif nocase "$opt" "N"
  then
    sudo ./change.network.name
  elif nocase "$opt" "Q"
  then
    exit=TRUE
  else
    echo Ah ben merde
  fi
done
