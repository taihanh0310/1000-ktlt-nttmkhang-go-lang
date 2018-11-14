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
    
    // ket noi category sang table
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let categories = DataService.instance.getCategories()
        let category = categories[indexPath.row]
        
        // gui du lieu sang man hinh product view controller
        performSegue(withIdentifier: "ProductsVC", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC{
            // navigation title update
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            // end navigation title update
            
            assert(sender as? Category != nil)
            productsVC.initProducts(category: sender as! Category)
        }
    }


}

