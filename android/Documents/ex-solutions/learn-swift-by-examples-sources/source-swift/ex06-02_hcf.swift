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

var divisorsList1: [Int] = []
var divisorsList2: [Int] = []

print("Enter first number: ")
var num1 = gets().chomp().toInt()
for x in 1...num1! {
  var check = num1! % x
  if check == 0 {
    divisorsList1.append(x)
  } 
}

print("Enter second number: ")
var num2 = gets().chomp().toInt()
for x in 1...num2! {
    var check = num2! % x
    if check == 0 {
        divisorsList2.append(x)
    } 
}

divisorsList1.sort{ $1 < $0 }
// println(divisorsList1)
for value in divisorsList1 {
    if contains(divisorsList2, value) {
        println("The HCF is \(value)")
        break
    }
}

