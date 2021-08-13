//Problem definition: https://www.hackerrank.com/challenges/jumping-on-the-clouds-revisited/problem

import Foundation

let firstLine = readLine()!.split(separator: " ").compactMap { Int($0) }
let jumpDistance = firstLine[1]

let array = readLine()!.split(separator: " ").compactMap { Int($0) }

func jumpingOnClouds(array: [Int], jumpDistance: Int) -> Int {

    var energy: Int = 100
    
    //first jump and energy loss
    var i = jumpDistance % array.count
    energy -= array[i] * 2 + 1
    
    while i != 0 {
        //(i + k) % n
        i = (i + jumpDistance) % array.count
        energy -= array[i] * 2 + 1
    }
    
    return energy
    
}

let result = jumpingOnClouds(array: array, jumpDistance: jumpDistance)
print(result)