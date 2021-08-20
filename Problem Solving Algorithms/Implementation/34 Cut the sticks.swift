//Problem definition: https://www.hackerrank.com/challenges/cut-the-sticks/problem

import Foundation

let _ = readLine()
var array = readLine()!.split(separator: " ").compactMap { Int($0) }

func cutTheSticks(array: inout [Int]) -> Void {
    
    array = array.sorted()
    
    print(array.count)
    for i in 1..<array.count {
        if array[i] != array[i-1] {
            print(array.count - i)
        }
    }
}

cutTheSticks(array: &array)