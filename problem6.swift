//Problem 6
// we are going to solve this using recursion
// Base case: 
// if the absolute value of the number is smaller than 11 and not 0, then its not divisible
// if the absolute value of the number is 0, then it is divisible
// Recursive case: 
// we use the alt sum technique to reduce a big number into a much smaller number
// and then we can call divBy11 again on that much smaller alt sum number
// until that number has absolute value smaller than 11
func divBy11(_ num:Int)->Bool{
    if (abs(num) < 11 ) {
        if (abs(num) == 0){
            return true
        } else {
            return false
        }
        
    }
    
    let number = String(abs(num))
    
    var oddPosSum = 0
    var evenPosSum = 0
    var counter = 0
    for character in number.characters{
        if (counter%2==0){
            evenPosSum = evenPosSum + Int(String(character))!
        } else {
            oddPosSum = oddPosSum + Int(String(character))!
        }
        counter = counter + 1
    }
    return divBy11(oddPosSum-evenPosSum);
    
}


//some test cases
//print(divBy11(121))
//print(divBy11(1331))
//print(divBy11(99))
//print(divBy11(1010109))
