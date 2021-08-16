//Problem definition: https://www.hackerrank.com/challenges/append-and-delete/problem

import Foundation

guard let initialString = readLine() else { fatalError("Bad input") }
guard let desiredString = readLine() else { fatalError("Bad input") }
guard var moves = Int(readLine()!) else { fatalError("Bad input") }

func appendAndDelete(initialString: String, desiredString: String, moves: Int) -> Void {
    
    var length = 0
    
    for i in stride(from: 0, to: min(initialString.count, desiredString.count), by: 1) {
        if initialString[i] == desiredString[i] {
            length += 1
        } else {
            break
        }
    }
    
    if initialString.count + desiredString.count - 2 * length > moves {
        print("No")
    } else if (initialString.count + desiredString.count - 2 * length) % 2 == moves % 2 {
        print("Yes")
    } else if initialString.count + desiredString.count - moves < 0 {
        print("Yes")
    } else {
        print("No")
    }

}

//this extension was used to access string elements as initialString[i].
extension String {

    var length: Int {
        return count
    }

    subscript (i: Int) -> String {
        return self[i ..< i + 1]
    }

    func substring(fromIndex: Int) -> String {
        return self[min(fromIndex, length) ..< length]
    }

    func substring(toIndex: Int) -> String {
        return self[0 ..< max(0, toIndex)]
    }

    subscript (r: Range<Int>) -> String {
        let range = Range(uncheckedBounds: (lower: max(0, min(length, r.lowerBound)),
                                            upper: min(length, max(0, r.upperBound))))
        let start = index(startIndex, offsetBy: range.lowerBound)
        let end = index(start, offsetBy: range.upperBound - range.lowerBound)
        return String(self[start ..< end])
    }
}

appendAndDelete(initialString: initialString, desiredString: desiredString, moves: moves)