//
//  ViewController.swift
//  05-e-com-2
//
//  Created by Drcom Asia on 11/13/18.
//  Copyright © 2018 Drcom Asia. All rights reserved.
//

import UIKit

// add them cac danh sach ke thua tu table datasouece
// table delege
class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var categoryTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let categories = DataService.instance.getCategories()
            let category = categories[indexPath.row]
            
            // update lai cell view
            cell.updateViews(category: category)
            return cell
        }
        else{
            return CategoryCell()
        }
    }


}

