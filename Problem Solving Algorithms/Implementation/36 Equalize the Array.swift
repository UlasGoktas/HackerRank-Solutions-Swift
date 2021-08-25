//Problem definition: https://www.hackerrank.com/challenges/equality-in-a-array/problem

import Foundation

let n = Int(readLine()!)!

let array = readLine()!.split(separator: " ").compactMap { Int($0) }

func equalizeArray(array: [Int]) -> Int {
    
    var counts = Array(repeating: 0, count: 101)
    var max = 0
        
    for number in array {
        counts[number] += 1
    }
    
    for i in 0..<counts.count {
        if counts[i] > counts[max] {
            max = i
        }
    }
    
    return (n - counts[max])
}

let result = equalizeArray(array: array)
print(result)