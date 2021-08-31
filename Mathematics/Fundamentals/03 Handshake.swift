//Problem definition: https://www.hackerrank.com/challenges/handshake/problem

import Foundation

func handshake(n: Int) -> Int {
    
    return Int(n * (n - 1) / 2)

}

let t = Int(readLine()!)!

for _ in 1...t {
    let n = Int(readLine()!)!

    let result = handshake(n: n)
    print(result)
}