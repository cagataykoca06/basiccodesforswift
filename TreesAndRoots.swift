class TreeNode {
    

    var data: String
    var children: [TreeNode]
    
    init(data: String) {
        self.data = data
        self.children = []
    }
    
    func addChild(_ newChild: TreeNode) {
        children.append(newChild)
    }
    func addChild(newChildData: String) {
        children.append(TreeNode(data: newChildData))
    }
    func addChildren(_ newChildren: [TreeNode]) {
        children.append(contentsOf: newChildren)
    }
    
    func removeChild(_ nodeToRemove: TreeNode) {
        if children.isEmpty {
            return
        } else if children.contains(nodeToRemove) {
            children.removeAll(where: {$0 == nodeToRemove})
            return
        } else {
            for child in children {
                child.removeChild(nodeToRemove)
            }
        }
    }
}
extension TreeNode: Equatable {
    static func == (lhs: TreeNode, rhs: TreeNode) -> Bool {
        lhs.data == rhs.data && lhs.children == rhs.children
    }
}
extension TreeNode: CustomStringConvertible {
    var description: String {
        return "\(data)"
    }
}

class Tree {
    var root: TreeNode
    
    init(root: TreeNode) {
        self.root = root
    }
    
    // print Method
    func print() {
        printFrom(root)
    }
    
    // printFrom Method
    func printFrom(_ currentNode: TreeNode, _ depth: Int = 0) {
        let depthMarker = String(repeating: "--|", count: depth)
        Swift.print("\(depthMarker)\(currentNode)")
        for child in currentNode.children {
            printFrom(child, depth + 1)
        }
    }
    
    // Depth First Traversal
    func depthFirstTraversal(startingAtNode: TreeNode) {
        Swift.print("\(startingAtNode) ", terminator: "")
        for child in startingAtNode.children {
            depthFirstTraversal(startingAtNode: child)
        }
    }
    
    // Breadth First Traversal
    func breadthFirstTraversal() {
        var queue = [TreeNode]()
        queue.append(root)
        while !queue.isEmpty {
            let currentNode = queue.removeFirst()
            Swift.print("\(currentNode) ", terminator: "")
            queue.append(contentsOf: currentNode.children)
        }
    }
}

let matriarch = TreeNode(data: "Tracy")
let tim = TreeNode(data: "Tim")
let spencer = TreeNode(data: "Spencer")
let daina = TreeNode(data: "Daina")
let olivia = TreeNode(data: "Olivia")
let noah = TreeNode(data: "Noah")
let zola = TreeNode(data: "Zola the Dog")
let luna = TreeNode(data: "Luna the Cat")
let sansa = TreeNode(data: "Sansa the Dog")
let finnegan = TreeNode(data: "Finnegan the Cat")
let pepeduke = TreeNode(data: "Pepeduke the Cat")
let flora = TreeNode(data: "Flora the Puppy")
matriarch.addChildren([tim, spencer, daina])
tim.addChildren([olivia, noah, zola, luna])
spencer.addChild(sansa)
sansa.addChild(flora)
daina.addChildren([finnegan, pepeduke])
let familyTree = Tree(root: matriarch)
familyTree.breadthFirstTraversal()
print()
print()
familyTree.depthFirstTraversal(startingAtNode: matriarch)
print()
print()
familyTree.print()

func addChild(newChild: TreeNode) {
    print("You've had a new child, it is \(newChild.data). Congratulations!")
    }
