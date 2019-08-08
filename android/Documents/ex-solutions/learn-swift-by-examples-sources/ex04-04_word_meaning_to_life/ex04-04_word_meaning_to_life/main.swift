/*  Ask user to enter an English word (or string) and calculate its meaning to life percentage.
#   A = 1%, B= 2%
#
# Enter your word (in capital): HARDWORK
# The value of meaning to life: 109%
*/

import Foundation

var alphaValues = [String: Int]()

let alphabets = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]

for (index, value) in alphabets.enumerated() {
  alphaValues[value] = index + 1
}

print("Enter word in capitals: ")
var input = readLine()!

var theValue = 0

for character in input {
    theValue = theValue + (alphaValues[String(character)])!
}

print("The value of meaning to life: \(theValue)%")
