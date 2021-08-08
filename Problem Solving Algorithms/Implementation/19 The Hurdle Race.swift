//Problem definition: https://www.hackerrank.com/challenges/the-hurdle-race/problem

import Foundation

let firstLine = readLine()!.split(separator: " ").compactMap { Int($0) }

let n = firstLine[0]
let k = firstLine[1]

let height = readLine()!.split(separator: " ").compactMap { Int($0) }

func hurdleRace(k: Int, height: [Int]) -> Int {
    
    let maxHeight = height.max()!

    if maxHeight > k {
        return maxHeight - k
    } else {
        return 0
    }
}

let result = hurdleRace(k: k, height: height)
print(result)