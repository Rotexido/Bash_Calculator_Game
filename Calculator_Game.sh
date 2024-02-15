#!/bin/bash

# Function to generate random numbers
generate_numbers() {
    num1=$((RANDOM % 10))
    num2=$((RANDOM % 10))
}

# Function to display the menu
display_menu() {
    echo "Welcome to Calculator Game"
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Quit"
    echo -n "Choose an option: "
}

# Main function
main() {
    while true; do
        display_menu
        read choice
        case $choice in
            1) generate_numbers
               echo "What is $num1 + $num2 ?"
               read answer
               if [ $answer -eq $((num1 + num2)) ]; then
                   echo "Correct!"
               else
                   echo "Incorrect. The correct answer is $((num1 + num2))."
               fi
               ;;
            2) generate_numbers
               echo "What is $num1 - $num2 ?"
               read answer
               if [ $answer -eq $((num1 - num2)) ]; then
                   echo "Correct!"
               else
                   echo "Incorrect. The correct answer is $((num1 - num2))."
               fi
               ;;
            3) generate_numbers
               echo "What is $num1 * $num2 ?"
               read answer
               if [ $answer -eq $((num1 * num2)) ]; then
                   echo "Correct!"
               else
                   echo "Incorrect. The correct answer is $((num1 * num2))."
               fi
               ;;
            4) echo "Exiting. Goodbye!"
               exit 0
               ;;
            *) echo "Invalid option. Please choose again."
               ;;
        esac
    done
}

main