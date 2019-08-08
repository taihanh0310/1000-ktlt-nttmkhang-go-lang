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

var count = 0

for _ in 1...10 {
    
  let num1 = Int.random(in: 0..<10)
  let num2 = Int.random(in: 0..<10)
  print("\(num1) + \(num2) = ", terminator: "")
  let theAnswer = num1 + num2
  let userAnswer = Int(readLine()!)
    
  if theAnswer == userAnswer {
    print("Correct!")
    count += 1
  } else {
    print("Wrong!")
  }

}

print("Your score is \(count)/10")
