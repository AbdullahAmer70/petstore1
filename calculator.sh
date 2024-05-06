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
