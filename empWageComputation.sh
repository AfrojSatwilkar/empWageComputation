#!/bin/bash

echo "Welcome to Employee Wage Computation Program"



isFullTime=1
isPartTime=2
empRatePerHr=20
empCheck=$((RANDOM%3))

case $empCheck in
	$isFullTime)
		empHrs=8
		;;
	$isPartTime)
		empHrs=4
		;;
	*)
		empHrs=0
		;;
esac
empSalary=$(($empHrs*$empRatePerHr))
echo "Total Salary : " $empSalary



