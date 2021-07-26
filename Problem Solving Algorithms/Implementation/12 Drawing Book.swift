//Problem definition: https://www.hackerrank.com/challenges/drawing-book/problem

import Foundation

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let p = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

func pageCount(n: Int, p: Int) -> Int {
    
    return min(p / 2, ((n / 2) - (p / 2)))
    
}

let result = pageCount(n: n, p: p)
print(result)