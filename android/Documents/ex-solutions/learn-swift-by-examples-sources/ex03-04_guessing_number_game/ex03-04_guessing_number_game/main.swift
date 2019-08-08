/*
# Purpose: using if for comparing two thingys, and random number
#
# Assignment 04: Guessing number game
#
# Generate Output:
# I have a secret number (0 - 9), Can you guess it?
// => (you type 9)
# Too big!
// => (you type 4)
# Too Small
// => (you type 5)
# Correct!
#
# Hint:
#   - to get a random number, use rand(10)
#   - use if ... end or if .. else .. end to display Too Big or Too Small
#   - use while loop until get is correct
#   - use exit to quit (if correct)
*/

import Foundation

print("I have a secret number (0-9) Can you guess it?")
var count = 0
var secretNumber = Int.random(in: 0..<10)

while let input = Int(readLine()!) {
  count += 1
  if input > secretNumber {
    print("TOO BIG")
  } else if input < secretNumber {
    print("too small")
  } else {
    print("CORRECT")
    break
  }
}

print("The number is : \(secretNumber). and you guessed \(count) times!!")
