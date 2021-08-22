//Problem definition: https://www.hackerrank.com/challenges/non-divisible-subset/problem

import Foundation

let firstLine = readLine()!.split(separator: " ").compactMap { Int($0) }
let k = firstLine[1]

let array = readLine()!.split(separator: " ").compactMap { Int($0) }

func nonDivisibleSubset(k: Int, array: [Int]) -> Int {
    
    var counts = Array(repeating: 0, count: k)
    
    for number in array {
        counts[number % k] += 1
    }
    
    var count = min(counts[0], 1)
    
    for i in 1..<(k/2) + (k%2) {
        if i != k - i {
            count += max(counts[i], counts[k-i])
        }
    }
    
    if k % 2 == 0 { 
        count += 1
    }
    
    return count
    
}

let result = nonDivisibleSubset(k: k, array: array)
print(result)