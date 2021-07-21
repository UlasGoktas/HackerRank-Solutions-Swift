//Problem definition: https://www.hackerrank.com/challenges/30-binary-numbers/problem

import Foundation

guard let n = Int(readLine()!) else { fatalError("Bad input") }

func convertDecimalToBinary(n: Int) -> String {
    
    let result: String = String(n, radix: 2)
    return result
}

func findNumberOfConsecutive(n: String) -> Int {
    
    var tempCount: Int = 0
    var count: Int = 0
    
    for i in n {
        if i == "1" {
            tempCount += 1
            
            if tempCount > count {
                count = tempCount 
            }
            
        } else {
            tempCount = 0
        }
    }
    
    return count
}

print(findNumberOfConsecutive(n: (convertDecimalToBinary(n: n))))