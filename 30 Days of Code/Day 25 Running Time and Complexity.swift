//Problem definition: https://www.hackerrank.com/challenges/30-running-time-and-complexity/problem
//Source: https://github.com/AleksandarDinic/HackerRank-Solutions/blob/main/30%20Days%20of%20Code/Solutions/Day%2025%20Running%20Time%20and%20Complexity.swift

import Foundation

let count = Int(readLine()!)!

func primeNumberFinder(number: Int) -> String {
    
    guard number != 2 else { return "Prime" }
    guard number > 1, number % 2 != 0 else { return "Not prime" }

    for i in stride(from: 3, through: Int(sqrt(Double(number))), by: 2) {
        if number % i == 0 {
            return "Not prime"
        }
    }

    return "Prime"
}

for _ in 0..<count {
    let number = Int(readLine()!)!

    print(primeNumberFinder(number: number))
}