//
//  Product.swift
//  05-e-com-2
//
//  Created by Hanh Nguyen on 11/13/18.
//  Copyright © 2018 Drcom Asia. All rights reserved.
//

import Foundation

struct Product {
    private(set) public var title: String
    private(set) public var imageName: String
    private(set) public var price: String
    
    init(title: String, imageName: String, price: String) {
        self.title = title
        self.imageName = imageName
        self.price = price
    }
}
