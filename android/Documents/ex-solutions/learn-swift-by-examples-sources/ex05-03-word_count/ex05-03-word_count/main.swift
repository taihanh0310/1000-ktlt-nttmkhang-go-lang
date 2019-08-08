//
//  main.swift
//  ex05-03-word_count
//

import Foundation

var text = "Everybody in this country should learn how to program a computer...  because it teaches you how to think.\n - Steve Jobs"
var words = text.components(separatedBy: CharacterSet.whitespaces)
var word_count = words.count
print("The text has \(word_count) words")
