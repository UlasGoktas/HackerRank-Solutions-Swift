//Problem definition: https://www.hackerrank.com/challenges/angry-professor/problem

import Foundation

func angryProfessor(threshhold: Int, arrivalTimes: [Int]) -> String {
    
    var studentAttendance = 0
    
    for arrival in arrivalTimes {
        if arrival <= 0 {
            studentAttendance += 1
        }
    }
    
    if studentAttendance >= threshhold {
        return "NO"
    } else {
        return "YES"
    }

}

guard let testCase = Int(readLine()!) else { fatalError("Bad input") }

for _ in 1...testCase {
    
    let firstLine = readLine()!.split(separator: " ").compactMap { Int($0) }
    let threshhold = firstLine[1]

    let arrivalTimes = readLine()!.split(separator: " ").compactMap { Int($0) }

    let result = angryProfessor(threshhold: threshhold, arrivalTimes: arrivalTimes)
    print(result)
}