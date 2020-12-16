import UIKit

// Binary Search Algorithm
// Arrays must be sorted 

let num1 = [1,2,3,4,5,6,7,8,9]
var lowerBound = 0
var upperBound = num1.count - 1
var middle = 0
var found = false
let requiredValue = 3

while (lowerBound <= upperBound) {
    middle = (lowerBound + upperBound) / 2
    
    if num1[middle] == requiredValue {
        found = true
        break
    }else if num1[middle] < requiredValue {
        lowerBound = middle + 1
    }else {
        upperBound = middle - 1
    }
}
print(found)
