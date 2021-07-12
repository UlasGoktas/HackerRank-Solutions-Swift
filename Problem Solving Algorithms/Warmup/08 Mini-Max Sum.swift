//Problem definition: https://www.hackerrank.com/challenges/mini-max-sum/problem

import Foundation

var array: [Int] = readLine()!.split(separator: " ").compactMap { Int($0) }

array.sort()

func miniMaxSum(array: [Int]) -> Void {
    
    var minimumSum: Int
    var maximumSum: Int
    
    minimumSum = array.reduce(0, +) - array.last!
    maximumSum = array.reduce(0, +) - array.first!
    
    print(minimumSum, terminator: " ")
    print(maximumSum, terminator: " ")

}

miniMaxSum(array: array)