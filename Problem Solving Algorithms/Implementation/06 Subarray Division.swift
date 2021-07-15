//Problem definition: https://www.hackerrank.com/challenges/the-birthday-bar/problem

import Foundation

let n = Int(readLine()!)!
let chocolateSquares = readLine()!.split(separator: " ").compactMap { Int($0) }
let thirdLine = readLine()!.split(separator: " ").compactMap { Int($0) }

let birthDay = thirdLine[0]
let birthMonth = thirdLine[1]
guard chocolateSquares.count == n else { fatalError("Bad input") }

func birthday(chocolateSquares: [Int], birthDay: Int, birthMonth: Int) -> Int {
    
    var count: Int = 0
    var sum: Int = 0
    
    for i in stride(from: 0, to: chocolateSquares.count, by: 1) {
        
        for j in stride(from: i, to: i + birthMonth, by: 1) {
            if j > chocolateSquares.count - 1 {
                break
            }
            sum += chocolateSquares[j]
        }
        if sum == birthDay {
            count += 1
        }
        sum = 0
    }
    return count
}

let result = birthday(chocolateSquares: chocolateSquares, birthDay: birthDay, birthMonth: birthMonth)
print(result)