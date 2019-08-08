/* Consecutive Sums
#
# Enter a number: 9
# 9 = 2 + 3 + 4
# 9 = 4 + 5
*/

import Foundation

extension Array {
  func combine(separator: String) -> String{
    var str : String = ""
    for (idx, item) in self.enumerated() {
      str += "\(item)"
      if idx < self.count-1 {
        str += separator
      }
    }
    return str
  }
}

print("Enter a number: ", terminator: "")

var x = Int(readLine()!)
var y = (x! + 1) / 2

for startingNumber in 1...y-1  {
  // println("starting num = \(startingNumber)")
  for j in startingNumber...y {
    let sum = Array(startingNumber...j).reduce(0, +)
    if sum == x {
      print("\(x!) = ", terminator: "")
      let elements = Array(startingNumber...j)
      print( elements.combine(separator: " + ") )
    }
  }
}
