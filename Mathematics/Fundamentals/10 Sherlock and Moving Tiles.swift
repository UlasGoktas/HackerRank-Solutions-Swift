//Problem definition: https://www.hackerrank.com/challenges/sherlock-and-moving-tiles/problem

import Foundation

let firstLine = readLine()!.split(separator: " ").compactMap { Int($0) }
let testCases = Int(readLine()!)!

let length = firstLine[0]
let s1 = firstLine[1]
let s2 = firstLine[2]

func movingTiles(length: Int, s1: Int, s2: Int) -> Void {
    let speedDiff = abs(s1 - s2)
    
    let area = Int(readLine()!)!
    let result = sqrt(2) * (Double(length) - sqrt(Double(area))) / Double(speedDiff)
    
    print(String(format: "%.4f", result))
    
}

for _ in 1...testCases {
    movingTiles(length: length, s1: s1, s2: s2)
}
