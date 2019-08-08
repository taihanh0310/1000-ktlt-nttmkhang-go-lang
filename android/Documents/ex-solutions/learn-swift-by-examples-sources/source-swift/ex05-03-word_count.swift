//
//  main.swift
//  ex05-03-word_count
//
//  Created by Zhimin Zhan on 27/11/2014.
//  Copyright (c) 2014 AgileWay. All rights reserved.
//

import Foundation

var text = "Everybody in this country should learn how to program a computer...  because it teaches you how to think.\n - Steve Jobs"
var words = text.componentsSeparatedByCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
var word_count = words.count
println("The text has \(word_count) words")