//
//  main.swift
//  ex06-01_find_divisors
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


var divisors: [Int] = []
print("Enter a number: ")
var input = gets().chomp().toInt()!

for x in 1...input {
	var check = input % x
	if check == 0 {
	  divisors.append(x)
	}
}
println("The divisors of \(input): \(divisors)")

