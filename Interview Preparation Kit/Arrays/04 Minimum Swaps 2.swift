//Problem definition: https://www.hackerrank.com/challenges/minimum-swaps-2/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=arrays

import Foundation

let n = Int(readLine()!)

let array = readLine()!.split(separator: " ").compactMap { Int($0) }

func minimumSwaps(array: [Int]) -> Int {
    
    var array = array
    var swapCount = 0
    
    for i in 0..<array.count {
        if i+1 != array[i] {
            var j = i
            while array[j] != i+1 {
                j += 1
            }
            
            array.swapAt(i, j)
            swapCount += 1
        }
    }
    
    return swapCount
}

let result = minimumSwaps(array: array)
print(result)