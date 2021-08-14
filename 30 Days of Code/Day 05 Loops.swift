//Problem definition: https://www.hackerrank.com/challenges/30-loops/problem

import Foundation

let input: Int = Int(readLine()!)!

func multiples(input: Int) -> Void {
    
    if (2...20).contains(input) {
        
        for i in 1...10 {
        print("\(input) x \(i) = \(input * i) ")
        
        }
    }
    
}

multiples(input: input)