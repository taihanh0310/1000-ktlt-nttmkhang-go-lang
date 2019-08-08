//
//  main.swift
//  ex06-01_find_divisors
//

import Foundation

var divisors: [Int] = []
print("Enter a number: ", terminator: "")
var input = Int(readLine()!)!

for x in 1...input {
	let check = input % x
	if check == 0 {
	  divisors.append(x)
	}
}
print("The divisors of \(input): \(divisors)")

