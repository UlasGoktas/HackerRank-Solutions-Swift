//Problem definition: https://www.hackerrank.com/challenges/30-dictionaries-and-maps/problem

let phoneBookEntriesCount: Int = Int(readLine()!)!
var phoneBook: [String: String] = [:]

for _ in 1...phoneBookEntriesCount {
    let contact: [String] = readLine()!.split(separator: " ").compactMap { String($0) }    
    phoneBook[contact[0]] = contact[1]
}

for _ in 1...phoneBookEntriesCount {
    guard let key = readLine() else { break }    
    
    if let phoneNumber = phoneBook[key] {
        print("\(key)=\(phoneNumber)")
    } else {
        print("Not found")
    }
    
}