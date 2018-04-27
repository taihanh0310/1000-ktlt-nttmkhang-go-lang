//
//  01_tinh_tong.swift
//  01.BasicSyntax
//
//  Created by Hanh Nguyen on 4/24/18.
//  Copyright © 2018 Hanh Nguyen. All rights reserved.
//

import Foundation

/**
 
 */
func tinhTongSoNguyen(number : Int) -> Int {
    var tong : Int = 0
    
    for i in 1..<number {
        tong += i
    }
    
    return tong
}
