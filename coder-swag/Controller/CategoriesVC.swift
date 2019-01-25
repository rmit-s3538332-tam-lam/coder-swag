//
//  CatergoriesVC.swift
//  coder-swag
//
//  Created by Graphene on 25/1/19.
//  Copyright © 2019 Graphene. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController{
    
    @IBOutlet weak var categoriesTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        categoriesTable.delegate = self
        categoriesTable.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}

extension CategoriesVC:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath) as? CategoryCell {
            let category: Category = DataService.instance.getCategories()[indexPath.row]
            cell.updateView(category: category)
            return cell
            
        }else{
            return CategoryCell()
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: category)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC {
            productsVC.initProducts(category: sender as! Category)
        }
        let barBtn = UIBarButtonItem()
        barBtn.title = ""
        navigationItem.backBarButtonItem = barBtn
    }
}
