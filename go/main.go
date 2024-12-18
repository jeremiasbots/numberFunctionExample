package main

import "fmt"

func NumberFunction(firstNumber int, secondNumber int) []bool {
	return []bool{firstNumber < 0, secondNumber < 0}
}

func main() {
	fmt.Println(NumberFunction(5, -4))
}
