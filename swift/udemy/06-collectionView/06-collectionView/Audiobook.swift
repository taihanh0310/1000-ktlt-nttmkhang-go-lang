//
//  Audiobook.swift
//  06-collectionView
//
//  Created by Drcom Asia on 11/20/18.
//  Copyright © 2018 Hanh Nguyen. All rights reserved.
//

import Foundation

struct AudioBook {
    let name: String
    let author: String
    let coverImage: String
    
    init(dictionary: AudiobookJSON) {
        self.name = dictionary["name"] as! String
        self.author = dictionary["artistName"] as! String
        self.coverImage = dictionary["artworkUrl100"] as! String
    }
}
