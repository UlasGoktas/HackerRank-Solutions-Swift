//Problem definition: https://www.hackerrank.com/challenges/30-data-types/problem
var i = 4
var d = 4.0
var s = "HackerRank "

// Declare second integer, double, and String variables.

let intergerInput: Int
let doubleInput: Double
let stringInput: String

// Read and save an integer, double, and String to your variables.

intergerInput = Int(readLine()!)!
doubleInput = Double(readLine()!)!
stringInput = readLine()!

// Print the sum of both integer variables on a new line.

print(i + intergerInput)

// Print the sum of the double variables on a new line.

print(d + doubleInput)

// Concatenate and print the String variables on a new line
// The 's' variable above should be printed first.
print(s + stringInput)