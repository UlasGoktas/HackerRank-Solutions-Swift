//Problem definition: https://www.hackerrank.com/challenges/diagonal-difference/problem

let numbersOfRow = Int(readLine()!)!
var matrix: [[Int]] = []

for _ in 1...numbersOfRow {
    matrix.append(readLine()!.split(separator: " ").compactMap { Int($0) })
}

func diagonalDifference (matrix: [[Int]]) -> Int {

    var primaryDiagonal: Int = 0
    var secondaryDiagonal: Int = 0
    
    for i in 0..<matrix.count {
        
        primaryDiagonal += matrix[i][i]
        secondaryDiagonal += matrix[i][matrix.count - i - 1]
    }
    
    // abs function is convert value to absolute value
    return abs(primaryDiagonal - secondaryDiagonal)
}

print(diagonalDifference(matrix: matrix))