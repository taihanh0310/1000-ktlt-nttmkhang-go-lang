//
//  main.swift
//  ex05-01-fahrenheit_to_celcius
//
//  Created by Zhimin Zhan on 27/11/2014.
//  Copyright (c) 2014 AgileWay. All rights reserved.
//

import Foundation

extension String {
    // Removes a single trailing newline if the string has one.
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

print("Enter temperature in Fahrenheit: ")
var input = (gets().chomp() as NSString).floatValue
var celcius = (input - 32) * 5.0 / 9.0
print("In Celcius: ")
println(round(celcius * 10) / 10)