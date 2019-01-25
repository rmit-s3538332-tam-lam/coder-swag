//
//  ProductVC.swift
//  coder-swag
//
//  Created by Graphene on 25/1/19.
//  Copyright © 2019 Graphene. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController {
    @IBOutlet weak var productsCollection: UICollectionView!
    private var products = [Product]()
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        productsCollection.delegate = self
        productsCollection.dataSource = self
        // Do any additional setup after loading the view.
    }
    func initProducts(category: Category){
        products = DataService.instance.getProduct(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }
    

    
    

}
extension ProductsVC: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = productsCollection.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell{
            let product = products[indexPath.row]
            cell.updateView(product: product)
            return cell
        } else{
            return ProductCell()
        }
    }
    
    
}
