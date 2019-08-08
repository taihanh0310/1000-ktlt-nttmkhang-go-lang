/*

 Finding the highest common factor

 Ask user to enter two numbers, and print out their highest common factor.

*/

import Foundation

var divisorsList1: [Int] = []
var divisorsList2: [Int] = []

print("Enter first number: ", terminator: "")
var num1 = Int(readLine()!)
for x in 1...num1! {
  let check = num1! % x
  if check == 0 {
    divisorsList1.append(x)
  } 
}

print("Enter second number: ", terminator: "")
var num2 = Int(readLine()!)
for x in 1...num2! {
    let check = num2! % x
    if check == 0 {
        divisorsList2.append(x)
    } 
}

divisorsList1.sort { $1 < $0 }

for value in divisorsList1 {
  if divisorsList2.contains(value) {
    print("The HCF is \(value)")
    break
  }
}

