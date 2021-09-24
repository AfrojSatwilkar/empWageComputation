#!/bin/bash

echo "Welcome to Employee Wage Computation Program"


isFullTime=1
isPartTime=2
empRatePerHr=20
maxWorkingDays=20
totalEmpHrs=0

totalWorkingDays=0
while [ $totalWorkingDays -lt $maxWorkingDays ]
do
        ((totalWorkingDays++))
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
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
done
totalEmpSalary=$(($totalEmpHrs*$empRatePerHr))
echo "Total Salary :- " $totalEmpSalary

