add() {
    result=$(echo "$1 + $2" | bc)
    echo "Result of addition: $result"
}

subtract() {
    result=$(echo "$1 - $2" | bc)
    echo "Result of subtraction: $result"
}

multiply() {
    result=$(echo "$1 * $2" | bc)
    echo "Result of multiplication: $result"
}

divide() {
    if [ $2 -eq 0 ]; then
        echo "Error: Division by zero is not allowed."
    else
        result=$(echo "scale=2; $1 / $2" | bc)
        echo "Result of division: $result"
    fi
}

main() {
    echo "Welcome to the Git Bash Calculator!"
    echo "Please select an operation:"
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    read -p "Enter your choice (1/2/3/4): " choice

    read -p "Enter first number: " num1
    read -p "Enter second number: " num2

    case $choice in
        1) add $num1 $num2 ;;
        2) subtract $num1 $num2 ;;
        3) multiply $num1 $num2 ;;
        4) divide $num1 $num2 ;;
        *) echo "Invalid choice";;
    esac
}

# Call the main function
main
