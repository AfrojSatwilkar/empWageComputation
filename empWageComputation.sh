#!/bin/bash

echo "Welcome to Employee Wage Computation Program"


isFullTime=1
isPartTime=2
wagePerHr=20
randomCheck=$((RANDOM%3))
if [ $isFullTime -eq $randomCheck ]
then
	empHrs=8
elif [ $isPartTime -eq $randomCheck ]
then
	empHrs=4
else
        empHrs=0
fi
totalWageInDay=$(($empHrs*$wagePerHr))
echo "Total wage in day : "$totalWageInDay


