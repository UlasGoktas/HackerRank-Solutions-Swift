//Problem definition: https://www.hackerrank.com/challenges/game-with-cells/problem

import Foundation

let input = readLine()!.split(separator: " ").compactMap { Int($0) }

let rows = input[0]
let columns = input[1]

func gameWithCells(rows: Int, columns: Int) -> Int {
    
    return Int(ceil(Double(rows) / 2) * ceil(Double(columns) / 2))

}

let result = gameWithCells(rows: rows, columns: columns)
print(result)