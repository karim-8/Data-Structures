import UIKit

var numbers = [10,60,50,7,8,99,256,88,20,71]

// i == 60
// j == 10
for i in 0..<numbers.count {
    for j in 0..<numbers.count {
        
        if numbers[i] > numbers[j] {// 10 > 60 - 10 > 50 - 10 > 7  ----->
            
            let temp = numbers[i]    //temp = 10
            numbers[i] = numbers[j] // numbers[i] == 7
            numbers[j] = temp       // numbers[j] == 10
            // we are appending elements so the last bigger will be the first element
        }
    }
}

print(numbers)
