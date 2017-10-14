// Problem 7
// first of all turn everything to lowercase (since in example given upper vs lower makes no difference)
// in example given, punctuation and non alphbetic characters made no difference
// so we only keep the alphabets
// then we check to see if the processed text is the same as its reverse
func isPalindrome(_ input: String) -> Bool {
    let prelim = input.lowercased()
    let text = String(prelim.characters.filter {"abcdefghijklmnopqrstuvwxyz".characters.contains($0) })
    let reverse = String(text.characters.reversed())
    return (text == reverse)
}
print("Please enter a string and let me check if it is a palindrome:")
let response = readLine()!
print(isPalindrome(response))
//print(isPalindrome("mom"))
//print(isPalindrome("never_odd_or_even"))
//print(isPalindrome(""))
//print(isPalindrome("car"))
