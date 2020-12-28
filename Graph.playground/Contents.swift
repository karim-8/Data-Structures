import UIKit

enum EdgeType {
    case weighted
    case directed
    case unDirected
}

struct Vertex<T> {
    let data:T
    let index:Int
}

struct Edge<T> {
    let source:Vertex<T>
    let destination:Vertex<T>
    let weight:Double? //Incase of weigted type
}

//Hashable:: Type that has value and could be compared across diffrent types
//Also Must Conform Equatable
extension Vertex: Hashable where T:Hashable {
    
}
extension Vertex: Equatable where T:Equatable {
    
}

protocol Graph {
    associatedtype Element
    func createVertex (data:Element) -> Vertex<Element>
    func createDirectedEdge(source:Vertex<Element>,source:Vertex<Element>,weight:Double?)
    func createUndirectedEdge(source:Vertex<Element>,destination:Vertex<Element>,weight:Double?)
    func add(edge:EdgeType,source:Vertex<Element>,destination:Vertex<Element>,weight:Double?)
    func edges(source:Vertex<Element>) -> [Edge<Element>]
    func getWeight(source:Vertex<Element>,destination:Vertex<Element>) -> Double?
}

extension Graph {
    
}

extension Vertex:CustomStringConvertible {
    
    var description: String {
        return "\(index) \(data)"
    }
}
