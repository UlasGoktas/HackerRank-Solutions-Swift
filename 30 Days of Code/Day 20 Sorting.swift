//Problem definition: https://www.hackerrank.com/challenges/30-sorting/problem

import Foundation

guard let n = Int(readLine()!) else { fatalError("Bad input") }

let array = readLine()!.split(separator: " ").compactMap { Int($0) }

guard array.count == n else { fatalError("Bad input") }

func bubbleSort(array : [Int]) -> Void {
    
    var numberOfSwaps: Int = 0
    var sortedArray: [Int] = array
    
    for _ in 0..<n {
        
        for j in 0..<n - 1 {
            if sortedArray[j] > sortedArray[j + 1] {
                sortedArray.swapAt(j, j + 1)
                numberOfSwaps += 1
            }
        }
        
        if numberOfSwaps == 0 {
            break
        }
    } 
    print("Array is sorted in \(numberOfSwaps) swaps.")
    print("First Element: \(sortedArray.first ?? Int.min)")
    print("Last Element: \(sortedArray.last ?? Int.max)")
}

bubbleSort(array: array)