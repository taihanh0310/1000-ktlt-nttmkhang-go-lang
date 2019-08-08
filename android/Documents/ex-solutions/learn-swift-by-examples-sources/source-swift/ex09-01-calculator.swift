//
//  main.swift
//  ex09-01_calculator
//
//  Created by Zhimin Zhan on 2/12/2014.
//  Copyright (c) 2014 AgileWay. All rights reserved.
//

import Foundation

class Calculator {

    func add(one: Int, another: Int) -> Int {
        return one + another
    }

    func minus(one: Int, another: Int) -> Int {
        return one - another
    }
}

var calc = Calculator()

//println( calc.add(2, 3) ) // Error: missing argument label 'another'
//println( calc.add(2, 3) )   // Missing argument label 'another'
println( calc.add(2, another: 3) )
println( calc.minus(17, another: calc.add(2, another:3) ) )