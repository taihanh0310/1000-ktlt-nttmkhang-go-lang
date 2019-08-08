/*  Calculate Average
#
# Enter scores: (-1 to finish):
# 87
# 94
# 100
# 56
# 74
# 67
# 75
# 88
# -1
#
# Average score : 80
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


var array: [Int] = []
var count = 0
println("Enter scores: ")

while true {
	var input = gets().chomp().toInt()
    if input == -1 {
        break
    }

	array.insert(input!, atIndex: 0)
	count += 1
}

var theSum = array.reduce(0, +)
var average = theSum / count
println("Average score: \(average)")
