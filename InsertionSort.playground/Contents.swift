import UIKit


var numbers = [100,60,50,7,8,99,256,88,20,71]

for i in 0..<numbers.count {
    
    let key = numbers[i] //60
    var j = i - 1 //100
    
    while j >= 0 && numbers[j] > key {  //0 && 100 > 60
        numbers[j+1] = numbers[j]   //60 = 100
        j = j - 1   
    }
    numbers[j + 1] = key
}
print(numbers)
