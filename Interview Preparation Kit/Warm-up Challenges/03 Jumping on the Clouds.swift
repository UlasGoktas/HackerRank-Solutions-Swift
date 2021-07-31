//Problem definition: https://www.hackerrank.com/challenges/jumping-on-the-clouds/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=warmup

import Foundation

guard let n = Int(readLine()!) else { fatalError("Bad input") }

let array = readLine()!.split(separator: " ").compactMap { Int($0) }

func jumpingOnClouds(array: [Int]) -> Int {
    var jump = 0
    var counter = 0
    
    while counter < n - 1 {
        if counter + 2 >= n || array[counter + 2] == 1 {
            counter += 1
            jump += 1
        } else {
            counter += 2
            jump += 1
        }
    }
    
    return jump
}

let result = jumpingOnClouds(array: array)
print(result)