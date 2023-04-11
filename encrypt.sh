#!/bin/bash


user=uziv08

function no_ctrl_c
{
  clear
  pkill -u ${user}
}

trap no_ctrl_c SIGINT SIGTERM

while true; do
  clear
  curl parrot.live
  sleep 10
  clear
  read -p "" input
  if [[ "$input" == "11297844563" ]]; then
    sleep 1
    echo 'Fixing stepanuv-server.exe...'
    sleep 4
    echo "Skoro hotovo..."
    sleep 3
    echo 'Hotovo.'
    sleep 1
    clear
    rm -- "$0"
  else
    sleep 1
  fi
done

trap - SIGINT SIGTERM
