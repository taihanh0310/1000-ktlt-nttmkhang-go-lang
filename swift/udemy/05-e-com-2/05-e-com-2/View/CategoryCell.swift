//
//  CategoryCell.swift
//  05-e-com-2
//
//  Created by Drcom Asia on 11/13/18.
//  Copyright © 2018 Drcom Asia. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    // dinh nghia nhung thanh phan cua view
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    // end dinh nghia nhung thanh phan cua view
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
