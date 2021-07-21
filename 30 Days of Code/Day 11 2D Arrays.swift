//Problem definition: https://www.hackerrank.com/challenges/30-2d-arrays/problem

import Foundation

var matrix: [[Int]] = []

for _ in 0...5 {
    matrix.append(readLine()!.split(separator: " ").compactMap { Int($0) })
}

func calculateMaximumHourglassSum(matrix: [[Int]]) -> Int {

    var tempResult = 0
    var result = Int.min
    
    for i in 0..<matrix.count - 2 {
        
        for j in 0..<matrix.count - 2 {
            
            //top row
            tempResult = matrix[i][j] + matrix[i][j + 1] + matrix[i][j + 2]
            //middle row
            tempResult += matrix[i + 1][j + 1]
            //bottom row
            tempResult += matrix[i + 2][j] + matrix[i + 2][j + 1] + matrix[i + 2][j + 2]
            
            result = max(result, tempResult)
        }
        
    }
    return result
}

print(calculateMaximumHourglassSum(matrix: matrix))