/*
##
# Purpose: Looping, random number generation, comparison
#
# Assignment Quiz for Subtraction
#
# Asking user for 10 substation questions, then output score
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
#   - don't think it's not same as Q7, Think about it ! (subtraction: bigger number - smaller number, random does not generate bigger first)
#   - loop (analysing 'again' 'again') for 10 times
#   - See Q4 for random number, think about range
*/

import Foundation

var count = 0

for _ in 1...10 {
  
  let num1 = Int.random(in: 0..<10)
  let num2 = Int.random(in: 0..<10)
  var theAnswer = 0
  
  if num1 > num2 {
    print("\(num1) - \(num2) = ", terminator: "")
    theAnswer = num1 - num2
  } else {
    print("\(num2) - \(num1) = ", terminator: "")
    theAnswer = num2 - num1
  }
  
  let userAnswer = Int(readLine()!)

  if theAnswer == userAnswer {
    print("Correct!")
    count += 1
  } else {
    print("Wrong!")
  }

}

print("Your score is \(count)/10")
