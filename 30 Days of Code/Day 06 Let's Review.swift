//Problem definition: https://www.hackerrank.com/challenges/30-review-loop/problem

import Foundation

let numStrings = Int(readLine()!)!

func printEvenAndOdd(inputString: String) -> Void {
    
    var index: Int = 0
    var evens: String = ""
    var odds: String = ""
    
    for i in inputString {
        if index % 2 == 0 {
            index += 1
            evens.append(i)  
        } else {   
            index += 1
            odds.append(i)
        }
    }
    
    print(evens + " " + odds)
}

for _ in 1...numStrings {
    let inputString = readLine()!
    printEvenAndOdd(inputString: inputString)
}