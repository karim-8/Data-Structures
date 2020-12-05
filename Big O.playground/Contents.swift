import Cocoa

                                                               //Time Complextity
//O(1)    //Constant Time
func getName1 (names:[String]) {
    if let name = names.first {
        print("firsr method response --->\(name)")
    }
}
getName1(names: ["101","102","103"])

//O(N)      //Linear Time
func getName2 (names:[String]) {
    for i in names {
        print("second method response --->\(i)")
    }
}
getName2(names: ["101","102","103"])

//O(N^2)    // Qudartic Time
func getName3 (names:[String]) {
    for _ in names {
        for i in names {
            print(i)
        }
    }
}
getName3(names: ["101","102","103"])

//O(N*logn)      // Logartimtic time
func getName4 (names:[String], requiredName:String) {
    
    var lowerBound = 0
    var upperBound = names.count
    var middle = 0
    var found = false
    
    while(lowerBound <= upperBound) {
        middle = (lowerBound + upperBound) / 2
        
        if names[middle] == requiredName {
            found = true
            print("trrrrue1")
            break
        }else if (names[middle] != requiredName ) {
            lowerBound = middle + 1
            print("trrrrue2")
        }else{
            lowerBound = middle - 1
            print("trrrrue3")
            
        }
        
    }
    
    
}
getName4(names: ["101","102","103"],requiredName: "109")
