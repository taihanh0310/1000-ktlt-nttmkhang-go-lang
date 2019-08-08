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

var array: [Int] = []
var count = 0
print("Enter scores: ")

while true {
  let input = Int(readLine()!)
  if input == -1 {
    break
  }

  array.insert(input!, at: 0)
  count += 1
}

var theSum = array.reduce(0, +)
var average = theSum / count
print("Average score: \(average)")
