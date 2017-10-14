// Problem 8
// we first notice that every row has the same width
// we then notice that the number of stars in each row is rowNumber*2-1
// we then just figure out how to pad the stars with spaces on both sides
// and use  for loop to print
func pyramid(_ height: Int) {
    let width = 2*height-1;
    for i in 1..<(height+1) {
        var starWidth = 2*i-1
        var stars = String(repeating: "*", count: starWidth)
        var padding = String(repeating: " ", count: (width-starWidth)/2)
        print(padding + stars + padding)
    }
}
