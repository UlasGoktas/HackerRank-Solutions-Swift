//Problem definition: https://www.hackerrank.com/challenges/picking-numbers/problem

import Foundation

let n = readLine()!
let array: [Int] = readLine()!.split(separator: " ").compactMap { Int($0) }

func pickingNumbers(array: [Int]) -> Int {
    var longest = 0
    
    for (_, value) in array.enumerated(){
        
        let equal = array.filter{$0 == value}.count
        let minusOne = array.filter{$0 == (value + 1)}.count
        
        longest = max(longest, equal + minusOne)
    }

    return longest
}

let result = pickingNumbers(array: array)
print(result)