/* 
Calculate LCM
*/

import Foundation

print("Enter the first number: ", terminator: "")
var num1 = Int(readLine()!)

print("Enter the second number:", terminator: "")
var num2 = Int(readLine()!)

var check = 0;
if num1! > num2! {
  check = num1!
} else {
  check = num2!
}

var startTime: Date = Date();

for n in (check ..< num1! * num2! + 1) where n % check == 0 {
  if n % num1! == 0 && n % num2! == 0 {
    print("The LCM for \(num1!) and \(num2!) is \(n)")
    break
  }
}
var finishTime: Date = Date();
var duration = finishTime.timeIntervalSince(startTime)
print("The time took is \(duration) seconds")
