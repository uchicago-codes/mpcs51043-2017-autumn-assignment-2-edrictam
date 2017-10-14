// Problem 5
// Prompt user for an input
// return false if the string is less than 12 characters
// since we need one of each category: lower case, upper case, numbers, and special characters
// we make sure that each category has at least length 1 after filtering the String
// if all criteria are met, then return true, else false
// the user of filter is referenced from and inspired by the following source:
// https://stackoverflow.com/questions/36594179/remove-all-non-numeric-characters-from-a-string-in-swift
func isValidPassword(_ input: String) -> Bool {
    if (input.characters.count < 12) {
        return false
    }
    let lowerAlpha = String(input.characters.filter {"abcdefghijklmnopqrstuvwxyz".characters.contains($0) })
    let num = String(input.characters.filter {"1234567890".characters.contains($0) })
    let special = String(input.characters.filter {"!@#$%".characters.contains($0) })
    let upperAlpha = String(input.characters.filter {"ABCDEFGHIHJKLMNOPQRSTUVWXYZ".characters.contains($0) })

    if (lowerAlpha.characters.count > 0 && num.characters.count > 0 && special.characters.count > 0 &&   upperAlpha.characters.count > 0) {
        return true;
    } else {
        return false;
    }
}
print("Please enter a password that is valid according to assignment criteria")
let response = readLine()!
print(isValidPassword(response))
//some test cases
//print(isValidPassword("mom"))
//print(isValidPassword("never!_o12dd_oAr_even"))
//print(isValidPassword(""))
//print(isValidPassword("caA3@r"))
