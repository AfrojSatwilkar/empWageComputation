#!/bin/bash

echo "Welcome to Employee Wage Computation Program"


isPresent=1
wagePerHr=20
randomCheck=$((RANDOM%2))
if [ $isPresent -eq $randomCheck ]
then
	empHrs=8
else
	empHrs=0
fi
totalWageInDay=$(($empHrs*$wagePerHr))
echo "Total wage in day : "$totalWageInDay


