//
//  main.swift
//  ex05-01-fahrenheit_to_celcius
//

import Foundation

print("Enter temperature in Fahrenheit: ", terminator: "")
var input = (readLine()! as NSString).floatValue
var celsius = (input - 32) * 5.0 / 9.0
print("In Celsius: ", terminator: "")
print(round(celsius * 10) / 10)
