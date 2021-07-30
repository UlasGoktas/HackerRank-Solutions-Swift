//Problem definition: https://www.hackerrank.com/challenges/30-binary-trees/problem

// Start of Node class
class Node {
    var data: Int
    var left: Node?
    var right: Node?

    init(d : Int) {
        data  = d
    }
} // End of Node class

// Start of Tree class
class Tree {
    func insert(root: Node?, data: Int) -> Node? {
        if root == nil {
            return Node(d: data)
        }

        if data <= (root?.data)! {
            root?.left = insert(root: root?.left, data: data)
        } else {
            root?.right = insert(root: root?.right, data: data)
        }

        return root
    }

    func levelOrder(root: Node?) -> Void {
    	
        var queue: [Node] = []
        queue.append(root!)
        
        while queue.count > 0 {
            let node = queue.removeFirst()
            
            print(node.data, terminator: " ")
            
            if let left = node.left {
                queue.append(left)
            }
            if let right = node.right {
                queue.append(right)
            }
        }
    }


} // End of Tree class

var root: Node?
let tree = Tree()

let t = Int(readLine()!)!

for _ in 0..<t {
    root = tree.insert(root: root, data: Int(readLine()!)!)
}

tree.levelOrder(root: root)