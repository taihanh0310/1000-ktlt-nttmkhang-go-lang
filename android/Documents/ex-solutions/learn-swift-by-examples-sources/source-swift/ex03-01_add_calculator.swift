//
//  main.swift
//  ex03-01_add_calculator
//
//  Created by Zhimin Zhan on 26/11/2014.
//  Copyright (c) 2014 AgileWay. All rights reserved.
//

import Foundation

import Cocoa

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

println("I am an Adding Machine and I am good at it")
print("Enter first number: ")
var num1 = gets().chomp().toInt()
print("Enter second number: ")
var num2 = gets().chomp().toInt()

println("Thinking...")
var answer = num1! + num2!
println("Got it, the answer is: \(answer)")

