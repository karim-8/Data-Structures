import UIKit

var numbers = [10,60,50,7,8,99,256,88,20,71]

var minIndex = 0

for  i in 0..<numbers.count {
    minIndex = i
    for j in (i+1)..<numbers.count {
        //first item
        if numbers[j] < numbers[minIndex] {
            minIndex = j
        }
            //swap
            let temp = numbers[i]
            numbers[i] = numbers[minIndex]
            numbers[minIndex] = temp
        }
}

print(numbers)
