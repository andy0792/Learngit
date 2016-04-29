#!/bin/sh
##script name: Usage_Rate_Of_Mem.sh
NowTime=`date +%F_%H:%M:%S`
echo "Now is ${NowTime}"
Total_Mem_KB=`free  | sed -n '/Mem/p' | awk '{ print $2}' `
Used_Mem_KB=`free  | sed -n '/Mem/p' | awk '{ print $3}' `
Free_Mem_KB=`free  | sed -n '/Mem/p' | awk '{ print $4}' `
Usage_Rate_Of_Mem=`echo "scale=2;( $Used_Mem_KB / $Total_Mem_KB )*100" | bc`
Avail_Rate_Of_Mem=`echo "scale=2;( $Free_Mem_KB / $Total_Mem_KB )*100" | bc`
echo "Usage Rate of Mem is : ${Usage_Rate_Of_Mem}%"
echo "Avail Rate of Mem is : ${Avail_Rate_Of_Mem}%"
