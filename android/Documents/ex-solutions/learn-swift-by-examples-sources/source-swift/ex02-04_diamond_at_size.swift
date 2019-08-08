//
//  main.swift
//  ex02-04_diamond_at_size
//
//  Created by Zhimin Zhan on 26/11/2014.
//  Copyright (c) 2014 AgileWay. All rights reserved.
//

import Foundation

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

print("Enter the number of rows for the diamond: ")
var height = gets().chomp().toInt()
var spaceCount = height! / 2 + 1

for var row = 1; row <= height; ++row {
    var starCount = 0
    
    if (row <= (height! / 2  + 1) ) {
        starCount  = row * 2 - 1
        spaceCount -= 1
    } else {
        starCount  = (height! - row) * 2 + 1
        spaceCount += 1
    }
    var spaceInFront = "".join(Array(count: spaceCount, repeatedValue: " "))
    var stars = "".join(Array(count: starCount, repeatedValue: "*"))
    println(spaceInFront + stars)
}
