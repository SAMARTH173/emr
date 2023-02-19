#!/bin/bash


<<doc
Name: Samarth kamat
Date: 10/02/2023
Description: Write a script to print system information using commands
Input: Provide a menu for the user to choose the information he wants to check
output: Sample execution: -
        ./system_info.sh
        1. Currently logged users
        2. Your shell directory
        3. Home directory
        4. OS name & version
        5. Current working directory
        6. Number of users logged in
        7. Show all available shells in your system
        8. Hard disk information
        9. CPU information.
        10. Memory Informations
        11. File system information.
        12. Currently running process.
        Enter the choice : 2
        Your shell directory is /bin/bash
        Do you want to continue (y/n) ? y
        1. Currently logged users
        2. Your shell directory
        3. Home directory
        4. OS name & version
        5. Current working directory
        6. Number of users logged in
        7. Show all available shells in your system
        8. Hard disk information
        9. CPU information.
        10. Memory Informations
        11. File system information.
        12. Currently running process.
        Enter the choice : 13
        Error : Invalid option, please enter valid option
        Do you want to continue(y/n) ? n
doc

con=y                                   #yes or no for while condition

while [ $con = "y" ]
do
    echo "1. Currently logged users"                            # display
    echo "2. Your shell directory"
    echo "3. Home directory"
    echo "4. OS name & version"
    echo "5. Current working directory"
    echo "6. Number of users logged in"
    echo "7. Show all available shells in your system"
    echo "8. Hard disk information"
    echo "9. CPU information."
    echo "10. Memory Informations"
    echo "11. File system information."
    echo "12. Currently running process."
    read -p "Enter the choice : " num
    
    case $num in                                            # different cases
        1)
            echo "Currently logged users:"
            whoami;;
        2)
            echo "Your shell directory :"
            printenv SHELL;;
        3)
            echo "Home directory :"
            echo $HOME;;
        4)
            echo "OS name:"
            uname
            echo "version: "
            uname -r
            ;;           
        5)
            echo "Current working directory"
            pwd ;;
        6)
            echo "Number of users logged in :"
            who-q;;
        7)
            echo "Show all available shells in your system"
            cat /etc/shells
            ;;
        8)
            echo "Hard disk information :"
            hwinfo
            ;;

        9)
            echo "CPU information.  :"
            cat /proc/cpuinfo
            ;;
        10)
            echo "Memory Informations  :"
            cat /proc/meminfo
            ;;
        11)
            echo "File system information.  :"
            df
            ;;
        12)
            echo "Currently running process. :"
            ps
            ;;
                                                                                            # error condition
        *)
            echo "Error : Invalid option, please enter valid option"
            ;;
    esac

    read -p "Do you want to continue (y/n) ? " con

done


