//Problem definition: https://www.hackerrank.com/challenges/simple-array-sum/problem

let arrayLength: Int = Int(readLine()!)!

let arrayString: String = readLine()!

let array = arrayString.split(separator: " ")

var sum: Int = 0

func simpleArraySum() -> Int {
    for i in array {
        sum += Int(i)!
    }
    return sum
}

print(simpleArraySum())