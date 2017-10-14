
//Problem 3
// use recursion
// Base case: 1 is a power of everything since a^0 = 1
// Recursive case: check a is divisible by b and then reduce to problem to smaller and smaller cases until either a is no longer divisible by b or a is equal to 1
func isPower(_ a:Int,_ b:Int) -> Bool{
    if (a == 1) {
        return true;
    }
    return (a%b == 0) && isPower(a/b,b);
}
// test cases
//isPower(10,2)
//isPower(8,2)
//isPower(1024,8)
//isPower(97,3)
