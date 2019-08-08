/* Consecutive Sums
#
# Enter a number: 9
# 9 = 2 + 3 + 4
# 9 = 4 + 5
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

extension Array {
    func combine(separator: String) -> String{
        var str : String = ""
        for (idx, item) in enumerate(self) {
            str += "\(item)"
            if idx < self.count-1 {
                str += separator
            }
        }
        return str
    }
}

func gets() -> String {
    var keyboard = NSFileHandle.fileHandleWithStandardInput()
    var inputData = keyboard.availableData
    var stringData = NSString(data: inputData, encoding:NSUTF8StringEncoding)
    return stringData!
}

print("Enter a number: ")

var x = gets().chomp().toInt()
var y = (x! + 1) / 2

for startingNumber in 1...y-1  {
  // println("starting num = \(startingNumber)")
    for j in startingNumber...y {
        
        var sum = Array(startingNumber...j).reduce(0,+)
        if sum == x {
            print("\(x!) = ")
            println( Array(startingNumber...j).combine(" + ") )
        }
    }
}