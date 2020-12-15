import Cocoa

class BinartTreeNode<Element>{
    
    var value:Element
    var leftChild:BinartTreeNode?
    var rightChild:BinartTreeNode?
    
    init(value:Element) {
        self.value = value
    }
}

extension BinartTreeNode {
    //Left is most piority mode
    func traverseInOrder(visit: (Element) -> Void) {
        leftChild?.traverseInOrder(visit: visit)
        visit(value)
        rightChild?.traverseInOrder(visit: visit)
    }
    //Level is the most priorty then parent
    func traversePostOrder(visit: (Element) -> Void) {
        leftChild?.traversePostOrder(visit: visit)
        rightChild?.traversePostOrder(visit: visit)
        visit(value)
    }
}


let root = BinartTreeNode(value: 10)
let rootLeft = BinartTreeNode(value: 9)
let rootRight = BinartTreeNode(value: 8)

let seven = BinartTreeNode(value: 7)
let sex = BinartTreeNode(value: 6)

let five = BinartTreeNode(value: 5)
let four = BinartTreeNode(value: 4)

root.leftChild = rootLeft
root.rightChild = rootRight

rootLeft.leftChild = seven
rootLeft.rightChild = sex

rootRight.leftChild = five
rootRight.rightChild = four


//root.traverseInOrder {
//    print($0)
//}

root.traversePostOrder {
    print($0)
}
