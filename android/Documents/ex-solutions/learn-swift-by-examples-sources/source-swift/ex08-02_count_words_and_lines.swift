// count_words_and_lines
//
// Usage: swift count_words_lines.swift /Users/zhimin/novel.txt

import Foundation

let firstCommandLineArgument = Process.arguments[0] // the program
let secondCommandLineArgument = Process.arguments[1]

println("First: '\(firstCommandLineArgument)'")
println("Processing file '\(secondCommandLineArgument)'")

let filePath = secondCommandLineArgument
let fileContent = NSString(contentsOfFile: filePath, encoding: NSUTF8StringEncoding, error: nil)

var wordCount = fileContent!.componentsSeparatedByCharactersInSet(NSCharacterSet.whitespaceCharacterSet()).count
var lineCount = fileContent!.componentsSeparatedByString("\n").count
println("\(secondCommandLineArgument) contains \(wordCount) words in \(lineCount) lines")

