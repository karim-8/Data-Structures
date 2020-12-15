import Cocoa

class BinartTreeNode<Element>{
    
    var value:Element
    var leftChild:BinartTreeNode?
    var rightChild:BinartTreeNode?
    
    init(value:Element) {
        self.value = value
    }
}


let root = BinartTreeNode(value: 10)
let rootLeft = BinartTreeNode(value: 9)
let rootRight = BinartTreeNode(value: 8)

let seven = BinartTreeNode(value: 7)
let sex = BinartTreeNode(value: 6)
let five = BinartTreeNode(value: 5)
let four = BinartTreeNode(value: 4)
let three = BinartTreeNode(value: 3)
let two = BinartTreeNode(value: 2)
let one = BinartTreeNode(value: 1)


