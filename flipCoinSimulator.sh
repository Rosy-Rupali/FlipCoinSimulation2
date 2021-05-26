#!/bin/bash
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


MaxWin=21
if [ $headCounts -ge $MaxWin ]
then
	echo "It's a win"
	echo "Head wins: "$headCounts
elif [ $tailCounts -ge $MaxWin ]
then
	echo "It's a win"
	echo "Tail wins: "$tailCounts
elif [ $headCounts -ge $MaxWin ] && [ $tailCounts -ge $MaxWin ]
then
	echo "It's a tie"
else
	echo "It's a loss"
fi


result1=0
result2=0
if [ $headCounts -gt $tailCounts ]
then
	result1=$(($headCounts-$tailCounts))
	echo "Head wins with: "$result1
else
	result2=$(($tailCounts-$headCounts))
	echo "Tail wins with: "$result2
fi
