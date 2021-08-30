//Problem definition: https://www.hackerrank.com/challenges/maximum-draws/problem

import Foundation

func maximumDraws(n: Int) -> Int {
    
    if n == 1 {
        return n * 2
    } else {
        return n + 1
    }

}

let t = Int(readLine()!)!

for _ in 1...t {
    let n = Int(readLine()!)!

    let result = maximumDraws(n: n)
    print(result)
}