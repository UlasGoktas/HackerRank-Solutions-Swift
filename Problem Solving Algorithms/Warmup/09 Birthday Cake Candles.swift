//Problem definition: https://www.hackerrank.com/challenges/birthday-cake-candles/problem

import Foundation

let sizeOfCandles: Int = Int(readLine()!)!
let candleHeights: [Int] = readLine()!.split(separator: " ").compactMap { Int($0) }

func birthdayCakeCandles(candles: [Int]) -> Int {
    
    let maxHeight = candleHeights.max()
    var tallestCandleCount: Int = 0
    
    for i in candleHeights {
        if i == maxHeight {
            tallestCandleCount += 1
        }
    }
    
    return tallestCandleCount
}

print(birthdayCakeCandles(candles: candleHeights))