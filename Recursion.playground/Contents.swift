import Cocoa

func increment(index:Int) -> Int{
    
    var counter = index
    counter += 1
    
    if counter < 10 {
        return increment(index: counter)
    }else {
        return counter
    }
    
}
increment(index: 1)

//Factorial
func factorial(num:Int) -> Int {
    if num == 0 { //base case
        return 1
    }
    
    return num * factorial(num: num - 1) //Recursive case
}

factorial(num: 2)

//Calculate Power

func calculatePower (num:Int,power:Int) -> Int {
    if power == 0  {
        return 1
    }else {         // It will return the sum of the operation   (2*2) * (2*1) * (2*0)
        return num * calculatePower(num: num, power: power - 1)
    }
}
print(calculatePower(num: 2, power: 3))
