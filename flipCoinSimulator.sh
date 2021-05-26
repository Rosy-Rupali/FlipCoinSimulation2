#!/bin/bash -x
echo "It displays winner of Heads or Tails"

read -p "Enter the number of coin flip: " noOfCounts
headCounts=0
tailCounts=0
for((i=1;i<=noOfCounts; i++))
do
	flip=$((RANDOM%2))
	if [ $flip -eq 0 ]
	then
		echo "Heads"
		headCounts=$((headCounts+1))
	else
		echo "Tails"
		tailCounts=$((tailCounts+1))

	fi
done
echo "Head wins: "$headCounts
echo "Tail wins: "$tailCounts
