//Problem definition: https://www.hackerrank.com/challenges/30-nested-logic/problem

import Foundation

let returnDate: [Int] = readLine()!.split(separator: " ").compactMap { Int($0) }
let dueDate: [Int] = readLine()!.split(separator: " ").compactMap { Int($0) }

func calculateHackos(dueDate: [Int], returnDate: [Int]) -> Int {
    
    //2nd index represent the year
    if dueDate[2] < returnDate[2] {
        return 10000
    
    //1st index represent the month    
    } else if dueDate[1] < returnDate[1] && dueDate[2] <= returnDate[2] {
        return 500 * (returnDate[1] - dueDate[1])
    
    //0th index represent the day
    } else if dueDate[0] < returnDate[0] && dueDate[1] <= returnDate[1] && dueDate[2] <= returnDate[2] {
        return 15 * (returnDate[0] - dueDate[0])
    
    } else {
        return 0
    }
}

let result = calculateHackos(dueDate: dueDate, returnDate: returnDate)
print(result)