//Problem definition: https://www.hackerrank.com/challenges/library-fine/problem

import Foundation

let firstLine = readLine()!.split(separator: " ").compactMap { Int($0) }
let secondLine = readLine()!.split(separator: " ").compactMap { Int($0) }

let d1 = firstLine[0]
let m1 = firstLine[1]
let y1 = firstLine[2]

let d2 = secondLine[0]
let m2 = secondLine[1]
let y2 = secondLine[2]

func libraryFine(d1: Int, m1: Int, y1: Int, d2: Int, m2: Int, y2: Int) -> Int {
    
    if y1 > y2 {
        //10000 and 10_000 are same
        return 10_000
    } else if m1 > m2 && y1 == y2{
        return (m1 - m2) * 500
    } else if d1 > d2 && m1 == m2 && y1 == y2 {
        return (d1 - d2) * 15
    } else {
        return 0
    }
}

let result = libraryFine(d1: d1, m1: m1, y1: y1, d2: d2, m2: m2, y2: y2)
print(result)