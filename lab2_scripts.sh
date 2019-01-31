#!/bin/bash
# Authors : Michael Gonzales
# Date: 1/31/2019

echo "Executable File Name: $0"

echo "Enter a regular expression:"
read regular
echo "Enter a file name:"
read filename

grep $regular $filename

echo "The number of phones numbers is:"
grep -c '[0-9]\{3\}\-[0-9]\{3\}\-[0-9]\{4\}' regex_practice.txt

echo "The number of emails is:"
grep -E -c '\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b' regex_practice.txt

echo "The phone numbers with the '303' area code are in the file 'phone_results.txt'"
grep -o '303-[0-9]\{3\}\-[0-9]\{4\}' regex_practice.txt > phone_results.txt

echo "The emails from geocities.com are in the file 'email_results.txt'"
grep '@geocities.com' regex_practice.txt > email_results.txt

echo "Command Line Argument 1: $1"
echo "File being used by grep is: $2"
echo "The lines that match the command line expression are in 'command_results.txt'"
grep $1 $2 > command_results.txt
