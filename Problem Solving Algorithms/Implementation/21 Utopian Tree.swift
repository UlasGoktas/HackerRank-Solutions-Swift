//Problem definition: https://www.hackerrank.com/challenges/utopian-tree/problem

import Foundation

func utopianTree(cycle: Int) -> Decimal {

    let x = ((cycle + (cycle % 2)) / 2) + 1
    let y = 1 + cycle % 2
    
    let sum = pow(2, x) - Decimal(y)
    
    return sum
}

guard let testCase = Int(readLine()!) else { fatalError("Bad input") }

for _ in 1...testCase {
    guard let cycle = Int(readLine()!) else { fatalError("Bad input") }

    let result = utopianTree(cycle: cycle)
    print(result)
}