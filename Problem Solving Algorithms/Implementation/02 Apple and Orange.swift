// Problem definition: https://www.hackerrank.com/challenges/apple-and-orange/problem

import Foundation

let firstLine: [Int] = readLine()!.split(separator: " ").compactMap { Int($0) }
let secondLine: [Int] = readLine()!.split(separator: " ").compactMap { Int($0) }
let thirdLine: [Int] = readLine()!.split(separator: " ").compactMap { Int($0) }
let applesDistance: [Int] = readLine()!.split(separator: " ").compactMap { Int($0) }
let orangesDistance: [Int] = readLine()!.split(separator: " ").compactMap { Int($0) }

let houseStart: Int = firstLine[0]
let houseEnd: Int = firstLine[1]

let appleTreePoint: Int = secondLine[0]
let orangeTreePoint: Int = secondLine[1]

let appleCount: Int = thirdLine[0]
let orangeCount: Int = thirdLine[1]

func countApplesAndOranges(houseStart: Int, houseEnd: Int, appleTreePoint: Int, orangeTreePoint: Int, applesDistance: [Int], orangesDistance: [Int]) -> [Int] {
    
    var inHouse: [Int] = [0, 0]
    
    for i in applesDistance {
        if (houseStart...houseEnd).contains(i + appleTreePoint) {
            inHouse[0] += 1
        }
    }
    
    for i in orangesDistance {
        if (houseStart...houseEnd).contains(i + orangeTreePoint) {
            inHouse[1] += 1
        }
    }
    
    
    return inHouse
}

let result: [Int] = countApplesAndOranges(houseStart: houseStart, houseEnd: houseEnd, appleTreePoint: appleTreePoint, orangeTreePoint: orangeTreePoint, applesDistance: applesDistance, orangesDistance: orangesDistance)

print(result.map { String($0) }.joined(separator: "\n"))