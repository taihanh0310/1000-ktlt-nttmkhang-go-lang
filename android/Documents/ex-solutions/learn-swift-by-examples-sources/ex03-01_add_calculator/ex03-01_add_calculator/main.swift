//
//  main.swift
//  ex03-01_add_calculator

import Foundation

print("I am an Adding Machine and I am good at it")
print("Enter first number: ", terminator: "")
var num1 = Int(readLine()!)
print("Enter second number: ", terminator: "")
var num2 = Int(readLine()!)

print("Thinking...")
var answer = num1! + num2!
print("Got it, the answer is: \(answer)")

