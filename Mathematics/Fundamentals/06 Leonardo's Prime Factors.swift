//Problem definition: https://www.hackerrank.com/challenges/leonardo-and-prime/problem

import Foundation

let primeArray = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47]

func primeCount(number: Int) -> Int {
    
    var primeCount = 0
    var sum = 1
    
    for prime in primeArray {
        sum *= prime
        
        if sum > number {
            break
        }
        primeCount += 1
    }
    return primeCount
}

let t = Int(readLine()!)!

for _ in 1...t {
    let number = Int(readLine()!)!

    let result = primeCount(number: number)
    print(result)
}