/*  Ask user to enter an English word (or string) and calculate its meaning to life percentage.
#   A = 1%, B= 2%
#
# Enter your word (in capital): HARDWORK
# The value of meaning to life: 109%
*/

import Foundation

extension String {
    // Removes a single trailing newline if the string has one.
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


var alphaValues = [String: Int]()

let alphabets = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]

for (index, value) in enumerate(alphabets) {
  alphaValues[value] = index + 1
}

println("Enter word in capitals: ")
var input = gets().chomp()

var theValue = 0

for character in input {
    theValue = theValue + (alphaValues[String(character)])!
}

println("The value of meaning to life: \(theValue)%")
