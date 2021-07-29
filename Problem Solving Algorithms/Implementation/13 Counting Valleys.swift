//Problem definition: https://www.hackerrank.com/challenges/counting-valleys/problem

import Foundation

guard let steps = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let path = readLine() else { fatalError("Bad input") }

func countingValleys(steps: Int, path: String) -> Int {
    
    var depth: Int = 0
    var valleyCount: Int = 0
    
    for i in path {
        
        if i == "U"{
            depth += 1    
        } else {
            depth -= 1
        }
        
        if (depth == 0) && (i == "U") {
            valleyCount += 1
        }
            
    }
    
    return valleyCount
}

let result = countingValleys(steps: steps, path: path)
print(result)