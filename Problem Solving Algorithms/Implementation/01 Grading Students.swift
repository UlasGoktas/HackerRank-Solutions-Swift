//Problem definition: https://www.hackerrank.com/challenges/grading/problem

import Foundation

guard let gradesCount = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

var grades: [Int] = []

for _ in 1...gradesCount {
    guard let gradesItem = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

    grades.append(gradesItem)
}

guard grades.count == gradesCount else { fatalError("Bad input") }


func gradingStudents(grades: [Int]) -> [Int] {
    
    var finalGrades: [Int] = []
    
    for i in grades {
        if i < 38 || i % 5 <= 2 {
            finalGrades.append(i)
        } else {
            finalGrades.append(i + (5 - i % 5))
        }
    }
    
    return finalGrades
}

let result: [Int] = gradingStudents(grades: grades)

print(result.map { String($0) }.joined(separator: "\n"))