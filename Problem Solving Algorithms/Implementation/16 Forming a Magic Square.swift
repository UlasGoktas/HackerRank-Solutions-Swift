//Problem definition: https://www.hackerrank.com/challenges/magic-square-forming/problem
//For more explanation: https://www.mathblog.dk/hackerrank-forming-a-magic-square/

import Foundation

let controlMatrix = [
            [8, 1, 6, 3, 5, 7, 4, 9, 2],
            [6, 1, 8, 7, 5, 3, 2, 9, 4],
            [4, 9, 2, 3, 5, 7, 8, 1, 6],
            [2, 9, 4, 7, 5, 3, 6, 1, 8], 
            [8, 3, 4, 1, 5, 9, 6, 7, 2],
            [4, 3, 8, 9, 5, 1, 2, 7, 6], 
            [6, 7, 2, 1, 5, 9, 8, 3, 4], 
            [2, 7, 6, 9, 5, 1, 4, 3, 8],
    ]

var matrix = [Int]()

for _ in 1...3 {
    let input = readLine()!.split(separator: " ").compactMap { Int($0) }
    
    for i in input {
        matrix.append(i)
    }
}

func formingMagicSquare(matrix: [Int]) -> Int {
    
    var costArray: [Int] = []
    
    
    for i in 0..<controlMatrix.count {
        var cost = 0
        
        for j in 0..<matrix.count {
            cost += abs(matrix[j] - controlMatrix[i][j]) 
        }
        costArray.append(cost)
        
    }
    
    return costArray.min()!
}

let result = formingMagicSquare(matrix: matrix)
print(result)