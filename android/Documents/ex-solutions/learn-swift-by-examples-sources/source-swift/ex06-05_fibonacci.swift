var hibNumbers: [Int] = [1, 1]
var num1 = 1
var num2 = 1

for _ in 1...10  {
    var nextNumber = num1 + num2
    hibNumbers.append(nextNumber)
    num1 = num2
    num2 = nextNumber
}
println("The number of rabbit pairs are: \(hibNumbers)")
