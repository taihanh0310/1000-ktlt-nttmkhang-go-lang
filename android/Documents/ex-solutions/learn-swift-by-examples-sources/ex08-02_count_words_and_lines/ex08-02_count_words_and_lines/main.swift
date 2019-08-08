// count_words_and_lines
//
// Usage: swift count_words_lines.swift /Users/zhimin/novel.txt

import Foundation

let firstCommandLineArgument = CommandLine.arguments[0] // the program
let secondCommandLineArgument = CommandLine.arguments[1]

print("First: '\(firstCommandLineArgument)'")
print("Processing file '\(secondCommandLineArgument)'")

let filePath = secondCommandLineArgument
let fileContent = try String(contentsOfFile: filePath, encoding: String.Encoding.utf8)

var wordCount = fileContent.components(separatedBy: CharacterSet.whitespaces).count
var lineCount = fileContent.components(separatedBy: "\n").count
print("\(secondCommandLineArgument) contains \(wordCount) words in \(lineCount) lines")

