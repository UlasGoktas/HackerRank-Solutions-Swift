//Problem definition: https://www.hackerrank.com/challenges/breaking-best-and-worst-records/problem

import Foundation

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

let scores = readLine()!.split(separator: " ").compactMap { Int($0) }

guard scores.count == n else { fatalError("Bad input") }

func breakingRecords(scores: [Int]) -> [Int] {
    
    var minimumTemp: Int = scores[0]
    var maximumTemp: Int = scores[0]
    var minimumChangesCount: Int = 0
    var maximumChangesCount: Int = 0
    
    for i in scores {
        if i < minimumTemp {
            minimumTemp = i
            minimumChangesCount += 1
        } else if i > maximumTemp {
            maximumTemp = i
            maximumChangesCount += 1
        }
    }
    
    return [maximumChangesCount, minimumChangesCount]
    
}

let result = breakingRecords(scores: scores)
print(result.map { String($0) }.joined(separator: " "))