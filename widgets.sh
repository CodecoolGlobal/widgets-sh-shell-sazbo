#!/bin/bash
chmod 755 *

export WIDGET_CONTROL="mem, cpu, proc, user, disk, sound"
#unset WIDGET_CONTROL

if [ -z ${WIDGET_CONTROL+x} ];
  then
      ./mem.sh
      echo ""
      ./cpu.sh
  else
      mem="mem"
      cpu="cpu"
      proc="proc"
      user="user"
      disk="disk"
      sound="sound"
      if [[ "$WIDGET_CONTROL" == *"$mem"* ]]; then
          ./mem.sh
          echo ""
      fi
      if [[ "$WIDGET_CONTROL" == *"$cpu"* ]]; then
          ./cpu.sh
          echo ""
      fi
      if [[ "$WIDGET_CONTROL" == *"$proc"* ]]; then
          ./proc.sh
          echo ""
      fi
      if [[ "$WIDGET_CONTROL" == *"$user"* ]]; then
          ./user.sh
          echo ""
      fi
      if [[ "$WIDGET_CONTROL" == *"$disk"* ]]; then
          ./disk.sh
          echo ""
      fi
      if [[ "$WIDGET_CONTROL" == *"$sound"* ]]; then
          ./sound.sh
          echo ""
      fi
  fi

#echo "Hello, how can I help Master? (mem, cpu, proc, user, disk or nothing): "
#read argument
#if [ "$argument" == "" ]
#  then
#      echo "Memory:"
#      ./mem.sh
#      echo ""
#      echo "CPU Stats:"
#      ./cpu.sh
#  else
#      export WIDGET_CONTROL=$argument
#      echo "$WIDGET_CONTROL"
#  fi