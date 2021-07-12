//Problem definition: https://www.hackerrank.com/challenges/compare-the-triplets/problem

let aliceValues: Array<Int> = readLine()!.split(separator: " ").map { Int($0)! }

let bobValues: Array<Int> = readLine()!.split(separator: " ").map { Int($0)! }

func compareTriplets(aliceValues: Array<Int>, bobValues: Array<Int>) -> Array<Int> {

    var aliceScore: Int = 0
    var bobScore: Int = 0

    for i in 0..<aliceValues.count {
        
        if aliceValues[i] > bobValues[i] {
            aliceScore += 1
        } else if bobValues[i] > aliceValues[i] {
            bobScore += 1
        }
        
    }

    return[aliceScore, bobScore]
}

print(compareTriplets(aliceValues: aliceValues, bobValues: bobValues).map { String($0) }.joined(separator: " "))