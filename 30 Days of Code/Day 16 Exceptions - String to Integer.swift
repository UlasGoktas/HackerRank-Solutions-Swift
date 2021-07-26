//Problem definition: https://www.hackerrank.com/challenges/30-exceptions-string-to-integer/problem
//Source: https://github.com/AleksandarDinic/HackerRank-Solutions/blob/main/30%20Days%20of%20Code/Solutions/Day%2016%20Exceptions%20-%20String%20to%20Integer.swift

import Foundation

/*
 * Define an ErrorType
 */
enum StringToIntTypecastingError: Error {
    case BadString
}

func stringToInt(inputString: String) throws -> Int{
    
    guard let result = Int(inputString) else {
        throw StringToIntTypecastingError.BadString
    }
    
    return result
    
}

/*
 * Read the input
 */
let inputString = readLine()!

do {
    try print(stringToInt(inputString: inputString))
} catch StringToIntTypecastingError.BadString {
    print("Bad String")
}
