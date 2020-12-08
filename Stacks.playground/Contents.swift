import Cocoa

                                  //  LIFO

struct Stack<Element> {
    private var storage:[Element] = []

    init() {}
    
    mutating func push (item:Element) {
        storage.append(item)
    }
    mutating func pop () {
        storage.popLast()
    }
}

//Presentation purpose
extension Stack:CustomStringConvertible {
    
    var description: String {
        
        let topDivider = "=====Top=====\n"
        let bottomDivider = "=====Bottom=====\n"
        
        let stackElements = storage.map {"\($0)"}.reversed().joined(separator: "\n")
        return topDivider + stackElements + "\n" + bottomDivider
    }
}

var stack = Stack<Int>()

stack.push(item: 10)
stack.push(item: 20)
stack.push(item: 30)
stack.push(item: 40)

print("Before Pop")
print(stack)
print("After Pop")
stack.pop()
print(stack)
