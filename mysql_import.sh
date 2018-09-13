#!/bin/bash

clear
echo ""
echo "========================================"
echo "Select the Option as per your need !  ||"
echo "1 for >>> Export the database	      ||"
echo "2 for >>> Import the database	      ||"
echo "Any key >>> For Exist		      ||"
echo "========================================"
read -p "Enter your choise: " choise

case $choise in
        1)
            read -p "Enter the hostname: " root
            read -p "Enter the Database name: " database
            read -p "Enter the path where you want to save: >>> ex:- /home/saurabh/backup.sql:  " path
            mysqldump -u $root -p $database > $path
            echo "Completed please check your path >>> $path"
            echo "Good bye !!!"
            ;;
        2)
            read -p "Enter the hostname: " root
            read -p "Enter the Database name: " database
            read -p "Enter the file name along with path: >>> ex:- /home/saurabh/backup.sql:  " path
            mysql -u $root -p $database < $path
            echo "Completed please check your database >>> $database"
            echo "Good bye !!!"
            ;;
        *)
            echo "Good bye. !!!"
            exit 1
esac


#---------------------------------------------------
#	DEVELOPED BY SAURABH ASHISH		   |
#---------------------------------------------------
