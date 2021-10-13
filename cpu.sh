#!/bin/bash
echo "CPU stats:"
echo $(grep -m 1 'model name' /proc/cpuinfo)
echo $(grep -m 1 'cpu cores' /proc/cpuinfo)
echo $(grep -m 1 'cpu MHz' /proc/cpuinfo)
#cat /proc/cpuinfo

