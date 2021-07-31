//Problem definition: https://www.hackerrank.com/challenges/2d-array/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=arrays

import Foundation

var array = [[Int]]()

for _ in 1...6 {
    let arrayTemp: [Int] = readLine()!.split(separator: " ").compactMap { Int($0) }
    array.append(arrayTemp)
}

func hourglassSum(array: [[Int]]) -> Int {
    
    var sumMax: Int = Int.min
    var sumTemp: Int = -1
    
    for i in 0..<array.count - 2 {
        for j in 0..<array.count - 2 {
            sumTemp = 
            array[i][j] + array[i][j+1] + array[i][j+2] +
            array[i+1][j+1] +
            array[i+2][j] + array[i+2][j+1] + array[i+2][j+2]
            
            sumMax = max(sumMax, sumTemp)
        }
    }
    
    return sumMax
    
}

let result = hourglassSum(array: array)
print(result)