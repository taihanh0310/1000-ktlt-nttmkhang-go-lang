/*
Get the character from given alphabetical position

# I know the alphabet very well, enter the alphabetical order number (integer) and I will tell you the corresponding letter, 0 to quit:
# 1 (user enter)
# is 'A'
# 5 (user enter)
# is 'E'
# 0
# Bye!

*/

import Foundation

var array: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]

print("I know the alphabet very well, enter the alphabetical order number (integer) and I will tell you the corresponding letter, 0 to quit:")

while true {
  let userInput = Int(readLine()!)
  if userInput == 0 {
    break
  }
  let n = userInput! - 1
  print(array[n])
}
