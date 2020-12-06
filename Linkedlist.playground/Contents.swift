import Cocoa

                                    //LinkedList

struct LinkedList<Value> {
    
    var head:Node<Value>?
    var tail:Node<Value>?
    
    var isEmpty: Bool {
        
        return head == nil
    }
    
    init() {}
    // add new element in the Head of the List
    mutating func push (value:Value) {
        head = Node(value: value, next: head)
        if tail == nil {
            tail = head
        }
    }
    // add new element in the Tail of the List
    mutating func append(value: Value) {
        
        guard !isEmpty else {
            print(isEmpty)
            push(value: value)
            return
        }
        
        let node = Node(value: value)
        tail!.next = node
        tail = node
    }
    
    // add new element in Particular postion of the List
    //This operation required two stepse 1st get Node    2nd insert after
    func getNode(at index:Int) -> Node<Value>? {
        var currentIndex = 0
        var currentNode = head
        
        while(currentNode != nil && currentIndex < index) { // value will be returned once  == the index paramter
            currentIndex += 1
            currentNode = currentNode?.next
        }
        return currentNode
    }
    
    func insert (value:Value, after node:Node<Value>) {
        node.next = Node(value: value, next: node.next)
    }
    
    
    
    // Pop element from the List
    mutating func pop () -> Value? {
        //Here in each tim i'll call pop method i will change the head to be the next node
        defer {
            head = head?.next
            if isEmpty {
                tail = nil
            }
        }
        return head?.value
    }



}


extension LinkedList: CustomStringConvertible {
    var description: String {
        // if head == nil
        guard let head = head else {
            return "Empty List"
        }
        return String(describing: head)
    }
}



class Node<Value> {
    
    var value: Value
    var next: Node?
    
    init(value:Value,next:Node? = nil) {
        self.value = value
        self.next = next
    }
}

extension Node:CustomStringConvertible {
    var description: String {
        // next value not available  will be called to the last element
        guard let next = next else  {
            return "\(value)"
        }
        return "\(value) -> " + String(describing: next) + " "
    }
    
}




//Push
var list = LinkedList<Int>()
//list.push(value: 10)
//list.push(value: 30)
//list.push(value: 60)

//Append
list.append(value: 10)
list.append(value: 20)
list.append(value: 30)
print(list)

//let node = list.getNode(at: 1)! // get required node
//list.insert(value: 999, after: node) // append value after

list.pop()
list.pop()


print(list)
