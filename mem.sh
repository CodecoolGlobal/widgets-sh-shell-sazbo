#!/bin/bash
echo "Memory:"
echo $(free | awk '/Mem/{print("RAM Usage: "),$3, "of", $2 $3/$2*100}')