/*   Sorting children names
#

# Enter child names in class: (0 to finish):
# Dominic
# Courtney
# Anna
# Angela
# Ella
# Toby
# Emma
# 0
#
# Kids in order:
# Angela, Anna, Courtney, Dominic, Ella, Emma, Toby

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


var kidNames: [String] = []

var userInput: String;

println("Enter childs names in class: (0 to finsh)")

do {
    userInput = gets().chomp()
    if userInput != "0" {
        kidNames.insert(userInput, atIndex: 0)
    } else {
        
    }
} while userInput != "0"

println("Kids in order :")
kidNames.sort { $0 < $1 }
println(kidNames)