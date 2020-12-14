import Cocoa

struct Queue<Element> {
    //FIFO
    var elements:[Element] = []
    @discardableResult
    mutating func enqeue (value:Element) -> Bool{
        elements.append(value)
        return true
    }
    mutating func dequeue () -> Element? {
        return isEmpty ? nil : elements.removeFirst()
    }
    var isEmpty:Bool {
        return elements.isEmpty
    }
}

class TreeNodes<T> {
    
    var value:T
    var children:[TreeNodes] = []
    
    init(value:T) {
        self.value = value
    }
    
    func addNode (child: TreeNodes) {
        children.append(child)
    }
}


extension TreeNodes where T:Equatable {
    
    func depthFirst (visit:(TreeNodes) -> Void) {
        visit(self)
        children.forEach {
            $0.depthFirst(visit: visit)
        }
    }
    func levelOrder (visit:(TreeNodes) -> Void) {
        visit(self)
        
        var queue = Queue<TreeNodes>()
        
        children.forEach{
            queue.enqeue(value: $0)
        }
        
        while let node = queue.dequeue() {
            visit(node)
            node.children.forEach {
                queue.enqeue(value: $0)
            }
        }
    }
    func search(value:T) -> TreeNodes? {
        var result: TreeNodes?
        
        levelOrder { (node) in
            if node.value == value {
                result = node
            }
        }
        return result
    }
}



// Root - Parent Node
let beverage = TreeNodes(value: "Beverage")

let hot = TreeNodes(value: "Hot")
let cold = TreeNodes(value: "Cold")

beverage.addNode(child: hot)
beverage.addNode(child: cold)


let coffe = TreeNodes(value: "Coffe")
let tea = TreeNodes(value: "Tea")

hot.addNode(child: tea)
hot.addNode(child: coffe)

let soda = TreeNodes(value: "Soda")
let milk = TreeNodes(value: "Milk")

cold.addNode(child: soda)
cold.addNode(child: milk)

//beverage.depthFirst {
//    print($0.value)
//}

//beverage.levelOrder {
//    print($0.value)
//}

if let result = beverage.search(value: "Soda") {
print(result.value)
}

