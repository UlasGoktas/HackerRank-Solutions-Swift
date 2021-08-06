//Problem definition: https://www.hackerrank.com/challenges/crush/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=arrays

import Foundation

let firstMultipleInput = readLine()!.split(separator: " ").map{ String($0) }

guard let n = Int(firstMultipleInput[0]) else { fatalError("Bad input") }

guard let m = Int(firstMultipleInput[1]) else { fatalError("Bad input") }

var queries = [[Int]]()

for _ in 1...m {
    
    let queriesRow = readLine()!.split(separator: " ").compactMap { Int($0) }
    
    queries.append(queriesRow)
}

func arrayManipulation(n: Int, queries: [[Int]]) -> Int {
    
    var currentValue = 0
    var maxValue = 0
    var array = Array(repeating: 0, count: n + 1)
    
    for query in queries {
        
        let a = query[0]
        let b = query[1]
        let k = query[2]
        array[a-1] += k
        array[b] -= k
        
    }
    
    for i in array {
        currentValue += i
        maxValue = max(maxValue, currentValue)
    }
    
    
    return maxValue
}

let result = arrayManipulation(n: n, queries: queries)
print(result)