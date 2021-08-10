//Problem definition: https://www.hackerrank.com/challenges/strange-advertising/problem

import Foundation

var n = Int(readLine()!)!

func viralAdvertising(n: inout Int) -> Int {

    var like = 0
    var share = 5
    
    while n > 0 {
        like += share / 2
        share = (share / 2) * 3
        n -= 1
    }
    
    return like
}

let result = viralAdvertising(n: &n)
print(result)