//
//  CollectionViewCell.swift
//  06-collectionView
//
//  Created by Hanh Nguyen on 11/19/18.
//  Copyright © 2018 Hanh Nguyen. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var bookImage: UIImageView!
    @IBOutlet weak var bookLabel: UILabel!
    
    func displayContent(image: UIImage, title: String){
        self.bookImage.image = image
        self.bookLabel.text = title
    }
}
