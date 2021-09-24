#!/bin/bash

echo "Welcome to Employee Wage Computation Program"

isFullTime=1
isPartTime=2
EMP_RATE_PER_HR=20
MAX_WORKING_DAYS=20

TOTAL_EMP_HRS=0
TOTAL_WORKING_DAYS=0
while [ $TOTAL_WORKING_DAYS -lt $MAX_WORKING_DAYS ]
do
        empCheck=$((RANDOM%3));
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
        TOTAL_EMP_HRS=$(($TOTAL_EMP_HRS+$empHrs))
        ((TOTAL_WORKING_DAYS++))
done
TOTAL_SALARY=$(($TOTAL_EMP_HRS*$EMP_RATE_PER_HR))
echo "Total Salary :- " $TOTAL_SALARY




