//Problem definition: https://www.hackerrank.com/challenges/ctci-array-left-rotation/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=arrays

import Foundation

let firstLine = readLine()!.split(separator: " ").compactMap { Int($0) }

let n = firstLine[0]
var d = firstLine[1]

var array = readLine()!.split(separator: " ").compactMap { Int($0) }

func rotLeft(array: [Int], d: Int) -> [Int] {
    
    var sortedArray: [Int] = []
    
    for i in 0..<array.count {
        let newValue: Int = array[(i + d) % array.count]
        
        sortedArray.append(newValue)
        
    }
    
    return sortedArray
}

let result = rotLeft(array: array, d: d)

for element in result {
    print(element, terminator: " ")
}