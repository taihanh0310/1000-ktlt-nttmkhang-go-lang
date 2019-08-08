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


var array: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]

println("I know the alpha bet very well, enter the alphabetical order number (integer) and I will tell you the corresponding letter, 0 to quit:")

while true {
    var userInput = gets().chomp().toInt()
    if userInput == 0 {
        break
    }
    var n = userInput! - 1
    println(array[n])
}
