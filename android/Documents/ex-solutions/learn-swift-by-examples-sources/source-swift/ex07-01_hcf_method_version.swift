/*

Finding the highest commmon factor

Ask user to enter two numbers, and print out their highest commmon factor.

*/

import Foundation

extension String {
    /// Removes a single trailing newline if the string has one.
    func chomp() -> String {
        if self.hasSuffix("\n") {
            return self[self.startIndex..<self.endIndex.predecessor()]
        } else {
            return self
        }
    }
}

func gets() -> String {
    var keyboard = NSFileHandle.fileHandleWithStandardInput()
    var inputData = keyboard.availableData
    var stringData = NSString(data: inputData, encoding:NSUTF8StringEncoding)
    return stringData!
}

func getDivisors(num: Int) -> [Int]{
    var divisors: [Int] = []
    
    for x in 1...num {
        var check = num % x
        if check == 0 {
            divisors.append(x)
        }
    }
    return divisors
}

print("Enter first number: ")
var num1 = gets().chomp().toInt()
var divisors_list_1 = getDivisors(num1!)

print("Enter second number: ")
var num2 = gets().chomp().toInt()
var divisors_list_2 = getDivisors(num2!)

divisors_list_1.sort{ $1 < $0 }
// println(divisors_list_1)
for value in divisors_list_1 {
    if contains(divisors_list_2, value) {
        println("The HCF is \(value)")
        break
    }
}

