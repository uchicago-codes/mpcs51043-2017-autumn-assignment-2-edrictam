//Problem 4
// the base case as given in the problem instructions is if b is 0 then return a
// we will use recursion, and everytime both a and b will become smaller, until b is 0 at some point
// we will ultimately reach the base case
// this is basically Euclid's algorithm
func gcd(_ a:Int, _ b:Int)->Int {
    if (b==0) {
        return a;
    }
    return gcd(b,a%b);
}
// some test cases
//gcd(100,25)
//gcd(100,7)
