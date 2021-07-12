//Problem definition: https://www.hackerrank.com/challenges/a-very-big-sum/problem

let _: Int = Int(readLine()!)!

let intArray: [Int] = readLine()!.split(separator: " ").map { Int($0)! }

func aVeryBigSum(intArray: [Int]) -> Int {

    var result: Int = 0

    for i in intArray {
        result += i
    }
    
    return result
}

print(aVeryBigSum(intArray: intArray))