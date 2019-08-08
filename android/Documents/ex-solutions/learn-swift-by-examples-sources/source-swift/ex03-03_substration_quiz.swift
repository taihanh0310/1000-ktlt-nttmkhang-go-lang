/*
##
# Purpose: Looping, random number generation, comparision
#
# Assignment Quiz for Subtraction
#
# Asking user for 10 substration questions, then output score
#
# Output:
# 9 - 1 =  (you enter 8)
# Correct.
# 7 - 2 = (you enter 8)
# Wrong!
# ...
# 6 - 3 =
#
# Your score: 8/10
#
# Hint:
#   - don't think it's not same as Q7, Think about it ! (substraction: bigger number - smaller number, random does not generate bigger first)
#   - loop (analysing 'again' 'again') for 10 times
#   - See Q4 for random number, think about range
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

var count = 0

for index in 1...10 {
    
    var num1 = Int.random(in: 0..<10)
    var num2 = Int.random(in: 0..<10)
    var theAnswer = 0
    
    if num1 > num2 {
        print("\(num1) - \(num2) = ")
        theAnswer = num1 + num2
    } else {
        print("\(num2) - \(num1) = ")
        theAnswer = num2 - num1
    }
    
    var userAnswer = gets().chomp().toInt()

    if theAnswer == userAnswer {
        println("Correct!")
        count += 1
    } else {
        println("Wrong!")
    }

}

println("Your score is \(count)/10")
