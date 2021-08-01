//Problem definition: https://www.hackerrank.com/challenges/30-linked-list-deletion/problem

import Foundation

// Start of class Node
class Node {
    var data: Int
    var next: Node?

    init(d: Int) {
        data = d
    }
} // End of class Node

// Start of class LinkedList
class LinkedList {
    func insert(head: Node?, data: Int) -> Node? {
        if head == nil {
            return Node(d: data)
        }

        head?.next = insert(head: head?.next, data: data)

        return head
    }

    func display(head: Node?) {
        if head != nil {
            print(head!.data, terminator: " ")

            display(head: head?.next)
        }
    }
    // Start of function removeDuplicates
    func removeDuplicates(head: Node?) -> Node? {
        var current: Node?
        
        if let currentHead = head {
            current = currentHead
        }
        
        while current?.next != nil {
            if current?.data == current?.next?.data {
                current?.next = current?.next?.next
            } else {
                current = current?.next
            }
        }
        return head
    }
}

var head: Node?
let linkedList = LinkedList()

let t = Int(readLine()!)!

for _ in 0..<t {
    head = linkedList.insert(head: head, data: Int(readLine()!)!)
}

linkedList.display(head: linkedList.removeDuplicates(head: head))
