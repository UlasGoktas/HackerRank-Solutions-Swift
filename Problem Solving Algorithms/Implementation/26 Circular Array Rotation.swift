//Problem definition: https://www.hackerrank.com/challenges/circular-array-rotation/problem

import Foundation

let firstLine = readLine()!.split(separator: " ").compactMap { Int($0) }
let rotationCount = firstLine[1]
let queriesCount = firstLine[2]

var array = readLine()!.split(separator: " ").compactMap { Int($0) }
var queries = [Int]()

for _ in 1...queriesCount {
    let queriesItem = Int(readLine()!)!

    queries.append(queriesItem)
}

func circularArrayRotation(array: [Int], rotationCount: Int, queries: [Int]) {
    
    for index in queries {
        print(array[index])
    }
    
}

func rotateRight(array : [Int], rotationCount: Int) -> [Int] {
    
    let length = array.count
    let rotations = (length + rotationCount % length) % length
    
    let firstSlice = array.suffix(rotations)
    let secondSlice = array.prefix(length - rotations)
    return Array(firstSlice) + Array(secondSlice)
}

let rotatedArray = rotateRight(array: array, rotationCount: rotationCount)
circularArrayRotation(array: rotatedArray, rotationCount: rotationCount, queries: queries)