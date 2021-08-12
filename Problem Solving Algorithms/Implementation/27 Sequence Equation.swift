//Problem definition: https://www.hackerrank.com/challenges/permutation-equation/problem

import Foundation

let n = Int(readLine()!)!
let array = readLine()!.split(separator: " ").compactMap { Int($0) }

func permutationEquation(array: [Int]) {
    
    var pReverse = Array(repeating: 0, count: n+1)
    var index: Int = 0
    
    for i in 1...n {
        
        pReverse[array[index]] = i
        index += 1
    }
    
    for i in 1...n {
        
        let x = pReverse[pReverse[i]]
        print(x)
        
    }
    
}

permutationEquation(array: array)