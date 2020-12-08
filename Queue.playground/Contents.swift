import Cocoa

          //FIFO
//Queing System

struct Queue<T> {
    var storage: [T] = []
    init(){}
    
    var isEmpty:Bool {
        return storage.isEmpty
    }
    var peek: T? {
        return storage.first
    }
    
    mutating func enqueue (element:T) {
        storage.append(element)
    }
    
    mutating func dequeue () -> T? {
        return isEmpty ? nil : storage.removeFirst()
    }

}

extension Queue: CustomStringConvertible {
    var description: String {
        return String(describing: storage)
    }
}

var queue = Queue<Int>()

queue.enqueue(element: 10)
queue.enqueue(element: 20)
queue.enqueue(element: 30)

print(queue)
print("After Dequing")
queue.dequeue()
print(queue)
