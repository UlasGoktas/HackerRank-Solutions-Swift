//Problem definition: https://www.hackerrank.com/challenges/time-conversion/problem
import Foundation

let input: String = readLine()!

func timeConversion(input: String) -> String {
    
    let timeWithoutFormat: String = String(input.dropLast(2))
    var hourValue: Int = Int(input.prefix(2))!
    
    if input.contains("PM") && hourValue < 12{
        hourValue += 12
        
        return timeWithoutFormat.replacingOccurrences(of: timeWithoutFormat.prefix(2), with: String(hourValue))
    } else if input.contains("AM") && hourValue == 12 {
        hourValue = 00
        print(hourValue)
        return timeWithoutFormat.replacingOccurrences(of: timeWithoutFormat.prefix(2), with: String(hourValue))
    } else {
        return timeWithoutFormat
    }
}

print(timeConversion(input: input))