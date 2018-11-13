//
//  DataService.swift
//  05-e-com-2
//
//  Created by Hanh Nguyen on 11/13/18.
//  Copyright © 2018 Drcom Asia. All rights reserved.
//

import Foundation

class DataService{
    
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "SHIRTS", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITALS", imageName: "digital.png"),
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "SHIRTS", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITALS", imageName: "digital.png"),
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "SHIRTS", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITALS", imageName: "digital.png"),
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "SHIRTS", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITALS", imageName: "digital.png"),
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "SHIRTS", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITALS", imageName: "digital.png"),
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "SHIRTS", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITALS", imageName: "digital.png"),
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "SHIRTS", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITALS", imageName: "digital.png"),
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "SHIRTS", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITALS", imageName: "digital.png"),
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "SHIRTS", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITALS", imageName: "digital.png"),
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "SHIRTS", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITALS", imageName: "digital.png"),
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "SHIRTS", imageName: "shirts.png"),
        
    ]
    
    // rreturn ve mot mang cac object catefory
    func getCategories() -> [Category] {
        //return self.categories
        return categories
    }
}
