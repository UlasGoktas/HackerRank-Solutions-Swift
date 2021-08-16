//Problem definition: https://www.hackerrank.com/challenges/append-and-delete/problem

import Foundation

guard let initialString = readLine() else { fatalError("Bad input") }

guard let desiredString = readLine() else { fatalError("Bad input") }

guard var moves = Int(readLine()!) else { fatalError("Bad input") }

func appendAndDelete(initialString: String, desiredString: String, moves: inout Int) -> String {
    
    var length = 0
    
    for i in stride(from: 0, to: min(initialString.count, desiredString.count), by: 1) {
        if initialString
    }

}

let result = appendAndDelete(initialString: initialString, desiredString: desiredString, moves: &moves)
print(result)