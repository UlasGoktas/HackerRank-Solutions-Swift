//Problem definition: https://www.hackerrank.com/challenges/plus-minus/problem

import Foundation

let totalInput: Double = Double(readLine()!)!
let array: [Int] = readLine()!.split(separator: " ").compactMap { Int($0) }

func plusMinus(array: [Int]) -> Void {
    
    var positiveValues: Double = 0.0
    var negativeValues: Double = 0.0
    var zeroValues: Double = 0.0
        
    for i in array {
        
        if i > 0 {
            positiveValues += 1
        } else if i < 0 {
            negativeValues += 1
        } else {
            zeroValues += 1
        }
        
    }
    
    // %.6f represent 6 place after the decimal
    print(String(format: "%.6f", positiveValues / totalInput))
    print(String(format: "%.6f", negativeValues / totalInput))
    print(String(format: "%.6f", zeroValues / totalInput))

}

plusMinus(array: array)