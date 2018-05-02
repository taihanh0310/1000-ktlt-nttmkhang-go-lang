//
//  functionSupport.swift
//  05_array
//
//  Created by Hanh Nguyen on 5/3/18.
//  Copyright © 2018 Hanh Nguyen. All rights reserved.
//

import Foundation

func checkSoChan(number: Int) -> Bool {
    if number < 2 {
        return false
    }
    
    if number % 2 == 0 {
        return true
    }
    return false
}

func checkSoNguyenTo(number: Int) -> Bool {
    if number  < 2 {
        return false
    }
    
//    let value: Double = sqrt(Double(number))
    
    for index in 2..<number {
        if number % index == 0 {
            return false
        }
    }
    return true
}
