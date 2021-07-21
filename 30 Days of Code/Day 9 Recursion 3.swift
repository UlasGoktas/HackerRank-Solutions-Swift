//Problem definition: https://www.hackerrank.com/challenges/30-recursion/problem

import Foundation

let n = Int(readLine()!)!

func factorial(n: Int) -> Int {
    
    if n == 1 {
        return 1
    } else {
        return n * factorial(n: n-1)
    }

}

let result = factorial(n: n)
print(result)