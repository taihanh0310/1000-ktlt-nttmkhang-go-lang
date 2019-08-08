//
//  main.swift
//  ex08-01_calc_average
//
//  Created by Zhimin Zhan on 2/12/2014.
//  Copyright (c) 2014 AgileWay. All rights reserved.
//

import Foundation

let bundle = NSBundle.mainBundle()
let path = bundle.pathForResource("score", ofType: "txt")

let content = String(contentsOfFile: path!, encoding: NSUTF8StringEncoding)

var strArray = content!.componentsSeparatedByString("\n")
var intArray: [Int] = []

for str in strArray  {
    if str != "" {
      intArray.append(str.toInt()!)
    }
}
var theSum: Int = intArray.reduce(0, +)
// error if only one is Float type
let theAverage = Float(theSum) / Float(intArray.count)
println("Average score is " + NSString(format: "%0.2f", theAverage))
