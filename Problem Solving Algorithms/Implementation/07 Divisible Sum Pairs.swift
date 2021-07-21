//Problem definition: https://www.hackerrank.com/challenges/divisible-sum-pairs/problem

import Foundation

let firstLine = readLine()!.split(separator: " ").compactMap { String($0) }

guard let n = Int(firstLine[0])
else { fatalError("Bad input") }

guard let k = Int(firstLine[1])
else { fatalError("Bad input") }

let array = readLine()!.split(separator: " ").compactMap { Int($0) }
guard array.count == n else { fatalError("Bad input") }

func divisibleSumPairs(n: Int, k: Int, array: [Int]) -> Int {
    
    var validPairCount: Int = 0
    
    for i in 0..<n - 1 {
        for j in (i + 1)..<n {
            
            if (array[i] + array[j]) % k == 0 {
                validPairCount += 1
            }
        }
    }
    
    return validPairCount
}

let result = divisibleSumPairs(n: n, k: k, array: array)
print(result)