//Problem definition: https://www.hackerrank.com/challenges/save-the-prisoner/problem

import Foundation

func saveThePrisoner(prisonerCount: Int, sweetCount: inout Int, startChair: Int) -> Int {
    
    sweetCount %= prisonerCount
    let lastPrisonar = (sweetCount + startChair - 1) % prisonerCount
    
    
    if lastPrisonar == 0 {
        return prisonerCount
    } else {
        return lastPrisonar
    }

}

let testCase = Int(readLine()!)!

for _ in 1...testCase {
    let input = readLine()!.split(separator: " ").compactMap { Int($0) }
    let prisonerCount = input[0]
    var sweetCount = input[1]
    let startChair = input[2]
    
    let result = saveThePrisoner(prisonerCount: prisonerCount, sweetCount: &sweetCount, startChair: startChair)
    print(result)
}