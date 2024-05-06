add() {
    result=$(echo "$1 + $2" | bc)
    echo "Result of addition: $result"
}

subtract() {
    result=$(echo "$1 - $2" | bc)
    echo "Result of subtraction: $result"
}
