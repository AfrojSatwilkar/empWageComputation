#!/bin/bash
declare -A DAILY_WAGE
echo "Welcome to Employee Wage Computation Program"

isFullTime=1
isPartTime=2
EMP_RATE_PER_HR=20
MAX_HOURS_IN_MONTH=100
MAX_WORKING_DAYS=20

TOTAL_EMP_HRS=0
TOTAL_WORKING_DAYS=0
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
while [[ $TOTAL_EMP_HRS -lt $MAX_HOURS_IN_MONTH && $TOTAL_WORKING_DAYS -lt $MAX_WORKING_DAYS ]]
do
        ((TOTAL_WORKING_DAYS++))
        empCheck=$((RANDOM%3))
	empHrs=$(getWorkingHrs $empCheck)
        TOTAL_EMP_HRS=$(($TOTAL_EMP_HRS+$empHrs))
	DAILY_WAGES[$TOTAL_WORKING_DAYS]=$(($EMP_RATE_PER_HR*$empHrs))

done
echo ${DAILY_WAGES[@]}
TOTAL_SALARY="$(getEmpWage $TOTAL_EMP_HRS)"
echo "Total Salary : "$TOTAL_SALARY


