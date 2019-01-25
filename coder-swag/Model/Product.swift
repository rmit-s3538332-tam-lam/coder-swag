//
//  Product.swift
//  coder-swag
//
//  Created by Graphene on 25/1/19.
//  Copyright © 2019 Graphene. All rights reserved.
//

import Foundation
struct Product{
    private(set) public var title: String
    private(set) public var imageName:String
    private(set) public var price: String
    init(title:String, price: String, imageName: String){
        self.title = title
        self.imageName = imageName
        self.price = price
    }
}
