//Problem definition: https://www.hackerrank.com/challenges/30-generics/problem

import Foundation

struct Printer<T> {
	
    func printArray(array: [T]) {
        for i in array {
            print(i)
        }
    }
    
}


var n = Int(readLine()!)!
var intArray = Array(repeating: 0, count: n);
for i in 0...n - 1 {
	intArray[i] = Int(readLine()!)!;
}

n = Int(readLine()!)!
var stringArray = Array(repeating: "", count: n);
for i in 0...n - 1 {
	stringArray[i] = readLine()!;
}

Printer<Int>().printArray(array: intArray)
Printer<String>().printArray(array: stringArray)