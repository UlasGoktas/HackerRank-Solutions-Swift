//Problem definition: https://www.hackerrank.com/challenges/30-regex-patterns/problem

import Foundation

let n = Int(readLine()!)!

var namesArray: [String] = []

for _ in 1...n {
    let input = readLine()!.split(separator: " ").compactMap { String($0) }
    
    if input[1].contains("@gmail.com") {
        namesArray.append(input[0])
    }
}

namesArray.sort()

for name in namesArray {
    print(name)
}