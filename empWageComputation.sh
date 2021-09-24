#!/bin/bash

echo "Welcome to Employee Wage Computation Program"

isFullTime=1
isPartTime=2
EMP_RATE_PER_HR=20
WORKING_DAY=0
function getWorkingHrs () {
	case $1 in
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
	echo $empHrs
}
function getEmpWage() {
	echo $(($1*$EMP_RATE_PER_HR))
}

((WORKING_DAY++))
empCheck=$((RANDOM%3))
empHrs=$(getWorkingHrs $empCheck)
DAILY_WAGES[$WORKING_DAY]=$(($EMP_RATE_PER_HR*$empHrs))

echo ${DAILY_WAGES[@]}
TOTAL_SALARY="$(getEmpWage $empHrs)"
echo "Total Salary : "$TOTAL_SALARY


