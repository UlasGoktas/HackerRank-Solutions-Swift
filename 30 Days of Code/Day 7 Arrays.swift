//Problem definition: https://www.hackerrank.com/challenges/30-arrays/problem

import Foundation

guard let arrayLength = Int(readLine()!) else { fatalError("Bad input") }

var array = readLine()!.split(separator: " ").compactMap { Int($0) }

guard array.count == arrayLength else { fatalError("Bad input") }

array.reverse()

let result = array.map { String($0) }.joined(separator: " ")

print(result)