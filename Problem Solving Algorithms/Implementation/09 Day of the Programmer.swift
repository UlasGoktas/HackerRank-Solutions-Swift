//Problem definition: https://www.hackerrank.com/challenges/day-of-the-programmer/problem

import Foundation

guard let year = Int(readLine()!) else { fatalError("Bad input") }

func dayOfProgrammer(year: Int) -> String {
    
    if (year % 4 == 0) && (year < 1918 || year % 400 == 0 || year % 100 != 0 ) {
        return "12.09.\(year)"
    } else if year == 1918 {
        return "26.09.\(year)"
    } else {
        return "13.09.\(year)"
    }

}

let result = dayOfProgrammer(year: year)
print(result)