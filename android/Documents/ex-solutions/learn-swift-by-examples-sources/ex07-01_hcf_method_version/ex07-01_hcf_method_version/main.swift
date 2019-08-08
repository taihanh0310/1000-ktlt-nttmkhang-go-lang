/*

Finding the highest commmon factor

Ask user to enter two numbers, and print out their highest commmon factor.

*/

import Foundation

func getDivisors(num: Int) -> [Int]{
  var divisors: [Int] = []
  
  for x in 1...num {
    let check = num % x
    if check == 0 {
        divisors.append(x)
    }
  }
  return divisors
}

print("Enter first number: ", terminator: "")
var num1 = Int(readLine()!)
var divisors_list_1 = getDivisors(num: num1!)

print("Enter second number: ", terminator: "")
var num2 = Int(readLine()!)
var divisors_list_2 = getDivisors(num: num2!)

divisors_list_1.sort { $1 < $0 }

for value in divisors_list_1 {
  if divisors_list_2.contains(value) {
    print("The HCF is \(value)")
    break
  }
}

