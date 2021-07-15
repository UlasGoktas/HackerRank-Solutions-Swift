//Problem definition: https://www.hackerrank.com/challenges/between-two-sets/problem
//Source : https://studyalgorithms.com/array/hackerrank-between-two-sets/

import Foundation

let arrayElementsCount: [Int] = readLine()!.split(separator: " ").compactMap { Int($0) }
let firstArray: [Int] = readLine()!.split(separator: " ").compactMap { Int($0) }
let secondArray: [Int] = readLine()!.split(separator: " ").compactMap { Int($0) }

guard arrayElementsCount[0] == firstArray.count else { fatalError("Bad input") }
guard arrayElementsCount[1] == secondArray.count else { fatalError("Bad input") }

func getLowestCommonMultiple(n1: Int, n2: Int) -> Int {
    
    if n1 == 0 || n2 == 0 {
        return 0
    } else {
        let greatestCommonDivisor = getGreatestCommonDivisor(n1: n1, n2: n2)
        return n1 * n2 / greatestCommonDivisor
    }
    
}

func getGreatestCommonDivisor(n1: Int, n2: Int) -> Int {
    
    if n2 == 0 {
        return n1
    }
    return getGreatestCommonDivisor(n1: n2, n2: n1 % n2)
}

func getTotalX(a: [Int], b: [Int]) -> Int {   
    var result = 0
    
    // Get LCM of all elements of a
    var lcm = a[0]
    for i in a {
        lcm = getLowestCommonMultiple(n1: lcm, n2: i)
    }
    
    // Get GCD of all elements of b
    var gcd = b[0]
    for i in b {
        gcd = getGreatestCommonDivisor(n1: gcd, n2: i)
    }
    
    // Count multiples of LCM that divide the GCD
    var multiple = 0
    while multiple <= gcd {
        multiple += lcm
        
        if gcd % multiple == 0 {
            result += 1
        }
    }
    
    return result
}

print(getTotalX(a: firstArray, b: secondArray))