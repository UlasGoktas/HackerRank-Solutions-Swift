//Problem definition: https://www.hackerrank.com/challenges/summing-the-n-series/problem

import Foundation

func summingSeries(number: Int) -> Int {
    //Tn = 2n-1 and 1+3+5...2n-1 = n*n
    let mod = 1_000_000_007
    let sum = (number % mod) * (number % mod) % mod
    
    return sum
}

let t = Int(readLine()!)!

for _ in 1...t {
    let number = Int(readLine()!)!

    let result = summingSeries(number: number)
    print(result)
}