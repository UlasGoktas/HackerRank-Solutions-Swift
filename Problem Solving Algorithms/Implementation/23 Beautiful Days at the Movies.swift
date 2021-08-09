//Problem definition: https://www.hackerrank.com/challenges/beautiful-days-at-the-movies/problem

import Foundation

let input = readLine()!.split(separator: " ").compactMap { Int($0) }

let i = input[0]
let j = input[1]
let k = input[2]

func beautifulDays(i: Int, j: Int, k: Int) -> Int {
    
    var beautifulDay: Int = 0
    
    for number in i...j {
        var reverse: Int = 0
        var tempNumber = number
        
        while tempNumber != 0 {
            reverse *= 10
            reverse += tempNumber % 10
            tempNumber /= 10
        }
        
        if abs(number - reverse) % k == 0 {
            beautifulDay += 1
        }
    }
    
    return beautifulDay
}

let result = beautifulDays(i: i, j: j, k: k)
print(result)