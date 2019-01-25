//
//  ProductCell.swift
//  coder-swag
//
//  Created by Graphene on 25/1/19.
//  Copyright © 2019 Graphene. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImage : UIImageView!
    @IBOutlet weak var productTitle : UILabel!
    @IBOutlet weak var productPrice : UILabel!
    
    func updateView(product: Product){
        self.productImage.image = UIImage(named: product.imageName)
        self.productTitle.text = product.title
        self.productPrice.text = product.price
    }
    
}
