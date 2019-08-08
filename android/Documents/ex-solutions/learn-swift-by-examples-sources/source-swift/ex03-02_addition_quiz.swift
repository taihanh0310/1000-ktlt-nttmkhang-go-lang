/*
# Purpose: Looping, random number generation, comparision
#
# Asking user for 10 addition questions, then output score ()
#
# Output:
# 1 + 1 = (you enter 2)
# Correct.
# 2 + 7 = (you enter 8)
# Wrong!
# ...
# 6 + 3 =
#
# Your score: 8/10
#
# Hint:
#   - times puts 'I am an adding machine, and I am good at it.'
#   - loop (analysing 'again' 'again') for 10 times
#   - Seee Q4 for random number

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
  print("\(num1) + \(num2) = ")
  var theAnswer = num1 + num2

  var userAnswer = gets().chomp().toInt()

  if theAnswer == userAnswer {
    println("Correct!")
    count += 1
  } else {
    println("Wrong!")
  }

}

println("Your score is \(count)/10")
