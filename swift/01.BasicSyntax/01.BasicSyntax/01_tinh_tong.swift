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

func tinhTongSoNguyenBinhPhuong(number : Int) -> Double {
    var tong : Double = 0
    
    for i in 1..<number {
        tong += pow(Double(i), 2);
    }
    
    return tong;
}

func tinhTongSoNguyenBinhPhuong2(number : Int) -> String {
    var tong : Int = 0
    var i : Int = 1
    
    while (i <= number) {
        tong += tong + (i * i)
        i += 1
    }
    
    return "tong la: \(tong)"
}

func tinhTongCacSoThapPhan(number : Int) -> String {
    var tong : Double = 0
    var i : Int = 1
    
    if(number <= 1){
        tong = 1
    }
    else{
        while(i<=number){
            tong += tong + (1.0 / Double(i))
            i = i + 1
        }
    }
    
    return "tong la: \(round(tong))"
}




