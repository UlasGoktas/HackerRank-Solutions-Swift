//Problem definition: https://www.hackerrank.com/challenges/lowest-triangle/problem

import Foundation

let input = readLine()!.split(separator: " ").compactMap { Double($0) }

let base = input[0]
let area = input[1]

func lowestTriangle(base: Double, area: Double) -> Int {
    
    return Int(ceil(2 * area / base))
    
}

let height = lowestTriangle(base: base, area: area)
print(height)