//Problem definition: https://www.hackerrank.com/challenges/sherlock-and-squares/problem

import Foundation

func squares(lowerBoundary: Double, upperBoundary: Double) -> Int {
    
    let min = Int(ceil(sqrt(lowerBoundary)))
    let max = Int(floor(sqrt(upperBoundary)))
    
    return max - min + 1
}

guard let testCase = Int(readLine()!) else { fatalError("Bad input") }

for _ in 1...testCase {
    let input = readLine()!.split(separator: " ").compactMap { Double($0) }

    let lowerBoundary = input[0]
    let upperBoundary = input[1]

    let result = squares(lowerBoundary: lowerBoundary, upperBoundary: upperBoundary)
    print(result)
}