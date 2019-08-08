/* 
Calculate LCM
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


print("Enter the first number: ")
var num1 = gets().chomp().toInt()

print("Enter the second number:")
var num2 = gets().chomp().toInt()

var check = 0;
if num1 > num2 {
  check = num1!
} else {
  check = num2!
}

var startTime: NSDate = NSDate();

for var n = check; n <= num1! * num2!; n+=check {
    if n % num1! == 0 && n % num2! == 0 {
        println("The LCM for \(num1!) and \(num2!) is \(n)")
        break
    }
}
var finishTime: NSDate = NSDate();
var duration = finishTime.timeIntervalSinceDate(startTime)
println("The time took is \(duration) seconds")
