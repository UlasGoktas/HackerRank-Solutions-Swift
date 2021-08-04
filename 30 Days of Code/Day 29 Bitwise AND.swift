//Problem definition: https://www.hackerrank.com/challenges/30-bitwise-and/problem

import Foundation

let input = Int(readLine()!)!

func bitwiseAndSolution(n: Int, k: Int) -> Int {
    var result = 0

    for i in 1...(n - 1) {
        for j in (i + 1)...n {
            guard i & j < k else { continue }

            result = max(result, i & j)

            guard result == k - 1 else { continue }
            return result
        }
    }

    return result
}

for _ in 1...input {
    let nkValues = readLine()!.split(separator: " ").compactMap { Int($0) }

    print(bitwiseAndSolution(n: nkValues[0], k: nkValues[1]))
}