//Problem definition: https://www.hackerrank.com/challenges/solve-me-first/problem

// read integers line by line
var firstNumberInput = Int(readLine()!)!
var secondNumberInput = Int(readLine()!)!

func solveMeFirst(firstNumber : Int, secondNumber : Int) -> Int {
    return firstNumber + secondNumber
}

print(solveMeFirst(firstNumber: firstNumberInput, secondNumber: secondNumberInput))