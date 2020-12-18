import UIKit

var numbers = [10,60,50,7,8,99,256,88,20,71]

//temp =10
  //60 , 10 , 50 ...
   // temp = 60
for i in 0..<numbers.count {
    for j in 0..<numbers.count {
        
        if numbers[i] < numbers[j] {
            
            let temp = numbers[i]
            numbers[i] = numbers[j]
            numbers[j] = temp
        }
    }
}

print(numbers)
