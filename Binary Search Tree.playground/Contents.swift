import UIKit

class BinaryNode<Element> {
    var value:Element
    var leftChild: BinaryNode?
    var rightChild:BinaryNode?
    
    init(value:Element) {
        self.value = value
    }
}

struct BinarySearchTree<Element:Comparable> {
    private(set) var root: BinaryNode<Element>?
    init() { }
}

extension BinarySearchTree:CustomStringConvertible {
    var description: String{
        guard let root = root else {return "Empty Tree"}
        return String(describing: root.value)
    }
}

extension BinarySearchTree {
    
    mutating func insert(value: Element) {
        root = insert(from: root,value: value)
    }
    
    private func insert(from node:BinaryNode<Element>?,value:Element) -> BinaryNode<Element> {
        guard let node = node else {
            return BinaryNode(value: value)
        }
        //using recusrion
        if value < node.value {
            node.leftChild = insert(from: node.leftChild, value: value)
        }else {
            node.rightChild = insert(from: node.rightChild, value: value)
        }
        return node
    }
    
}

var bst = BinarySearchTree<Int>()

bst.insert(value: 10)
bst.insert(value: 9)
bst.insert(value: 8)
bst.insert(value: 7)
bst.insert(value: 7)

print(bst)
