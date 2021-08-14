//Problem definition: https://www.hackerrank.com/challenges/find-digits/problem

import Foundation

func findDigits(number: String) -> Int {
    
    let numberInt = Int(number)!
    let digits: [Int] = number.compactMap { $0.wholeNumberValue }
    var divisorCount = 0

    for digit in digits {
        if digit != 0 && numberInt % digit == 0 {
            divisorCount += 1
        }
    }
    
    return divisorCount

}

let testCase = Int(readLine()!)!

for _ in 1...testCase {
    let number = readLine()!

    let result = findDigits(number: number)
    print(result)
}