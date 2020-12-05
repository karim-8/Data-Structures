import Cocoa

                                    //LinkedList

struct LinkedList<Value> {
    
    var head:Node<Value>?
    var tail:Node<Value>?
    
    var isEmpty: Bool {
        
        return head == nil
    }
    
    init() {}
    
    mutating func push (value:Value) {
        head = Node(value: value, next: head)
        if tail == nil {
            tail = head
        }
    }
    
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
list.append(value: 0)
list.append(value: 0)
list.append(value: 0)


print(list)
