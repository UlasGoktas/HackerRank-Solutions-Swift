//Problem definition: https://www.hackerrank.com/challenges/migratory-birds/problem
//Source: https://stackoverflow.com/questions/38416347/getting-the-most-frequent-value-of-an-array

import Foundation

let n = Int(readLine()!)
let array = readLine()!.split(separator: " ").compactMap { Int($0) }

func migratoryBirds(array: [Int]) -> Any? {
    
    let countedSet = NSCountedSet(array: array)
    let mostFrequent = countedSet.max { countedSet.count(for: $0) < countedSet.count(for: $1) }
    
    return mostFrequent
}

let result = migratoryBirds(array: array)
print(result!)