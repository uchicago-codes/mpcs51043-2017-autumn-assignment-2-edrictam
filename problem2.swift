// Problem 2
// Prompt user to enter a score
// then call function with what user entered as input
// Convert input to Double just in case
// Do a big if else statement

func giveScore(_ response:String) -> String {
    let num = Double(response)!;
    if (num>100){
        return "Error!!!";
    }
    if (num >= 90) {
        return "A";
    } else if (num>=80) {
        return "B";
    } else if (num>=70) {
        return "C";
    } else if (num>=60) {
        return "D";
    } else if (num < 60 && num >= 0) {
        return "F";
    } else {
        print("Error!!! Invalid Input");
        return "Error!!!";
    }
}
print("Please enter a score!!!")
let response = readLine()!
print(giveScore(response))
