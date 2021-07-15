//Problem definition: https://www.hackerrank.com/challenges/kangaroo/problem

import Foundation

guard let firstMultipleInputTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }

let firstMultipleInput = firstMultipleInputTemp.split(separator: " ").map{ String($0) }

guard let x1 = Int(firstMultipleInput[0])
else { fatalError("Bad input") }

guard let v1 = Int(firstMultipleInput[1])
else { fatalError("Bad input") }

guard let x2 = Int(firstMultipleInput[2])
else { fatalError("Bad input") }

guard let v2 = Int(firstMultipleInput[3])
else { fatalError("Bad input") }

func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    
    var n: Int = 0
    
    while n <= 10000 {
        
        if x1 == x2 {
            return "YES"
        } else if x1 + v1 * n == x2 + v2 * n {
            return "YES"
        }
        n += 1
        
    }
    return "NO"
    
    
}

let result = kangaroo(x1: x1, v1: v1, x2: x2, v2: v2)

print(result)