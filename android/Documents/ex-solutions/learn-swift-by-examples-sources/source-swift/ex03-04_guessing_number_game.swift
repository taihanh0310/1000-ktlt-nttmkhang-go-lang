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

println("I have a secret number (0-9) Can you guess it?")
var count = 0
var secretNumber = Int.random(in: 0..<10)

while var input = gets().chomp().toInt() {
    count += 1
    if input > secretNumber {
      println("TOO BIG")
    } else if input < secretNumber {
      println("too small")
    } else {
      println("CORRECT")
      break
    }
}

println("The number is : \(secretNumber). and you guessed \(count) times!!")