//Problem definition: https://www.hackerrank.com/challenges/30-conditional-statements/problem

let input: Int = Int(readLine()!)!

func findWeirdOrNot(input: Int) -> String {
    if input % 2 != 0 {
        return "Weird"
    }

    if (2...5).contains(input) {
        return "Not Weird"
    } else if (6...20).contains(input) {
        return "Weird"
    } else if input > 20 {
        return "Not Weird"
    } else {
        return ""
    }
}

print(findWeirdOrNot(input: input))