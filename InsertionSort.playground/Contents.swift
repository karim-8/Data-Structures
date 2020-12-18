import UIKit


var numbers = [10,60,50,7,8,99,256,88,20,71]

for i in 0..<numbers.count {
    var key = numbers[i]
    var j = i - 1
    
    while j >= 0 && numbers[j] > key {
        numbers[j+1] = numbers[j]
        j = j - 1
    }
    numbers[j + 1] = key
}
print(numbers)
