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
    
    let hats = [
        Product(title: "Hat1", imageName: "hat01.png", price: "25$"),
        Product(title: "Hat1", imageName: "hat02.png", price: "26$"),
        Product(title: "Hat1", imageName: "hat03.png", price: "25$"),
        Product(title: "Hat1", imageName: "hat04.png", price: "25$"),
    ]
    
    let hoodies = [
        Product(title: "Hat1", imageName: "hat01.png", price: "25$"),
        Product(title: "Hat1", imageName: "hat02.png", price: "26$"),
        Product(title: "Hat1", imageName: "hat03.png", price: "25$"),
        Product(title: "Hat1", imageName: "hat04.png", price: "25$"),
    ]
    
    let digitalGoods = [
        Product(title: "digital", imageName: "hat01.png", price: "25$"),
        Product(title: "digital2", imageName: "hat02.png", price: "26$"),
        Product(title: "digital3", imageName: "hat03.png", price: "25$"),
        Product(title: "digital4", imageName: "hat04.png", price: "25$"),
        ]
    
    let shirts = [
        Product(title: "shirts", imageName: "shirt01.png", price: "25$"),
        Product(title: "shirts", imageName: "shirt01.png", price: "26$"),
        Product(title: "shirts", imageName: "shirt01.png", price: "25$"),
        Product(title: "shirts", imageName: "shirt01 .png", price: "25$"),
        ]
    
    // rreturn ve mot mang cac object catefory
    func getCategories() -> [Category] {
        //return self.categories
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "DIGITALS":
            return getDigitalGoods()
        case "HATS":
            return getHats()
        default:
            return getHoodies()
        }
    }
    
    // sub functuon
    func getShirts() -> [Product] {
        return shirts
    }
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
    func getHoodies() -> [Product] {
        return hoodies
    }
    func getHats() -> [Product] {
        return hats
    }
    
    // end sub function
}
