
//
//  DataServices.swift
//  coder-swag
//
//  Created by Graphene on 25/1/19.
//  Copyright © 2019 Graphene. All rights reserved.
//

import Foundation
class DataService{
    static let instance = DataService()
    private let categories :[Category] = [
        Category.init(title: "SHIRTS", imageName: "shirts.png"),
        Category.init(title: "HOODIES", imageName: "hoodies.png"),
        Category.init(title: "HATS", imageName: "hats.png"),
        Category.init(title: "DIGITAL", imageName: "digital.png")
    ]
    private let hats: [Product] = [
        Product.init(title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product.init(title: "Devslopes Logo Hat Back", price: "$22", imageName: "hat02.png"),
        Product.init(title: "Devslopes Logo Hat White", price: "$22", imageName: "hat03.png"),
        Product.init(title: "Devslopes Logo Snapback", price: "$20", imageName: "hat04.png")
    ]
    private let hoodies: [Product] = [
        Product.init(title: "Devslopes Logo Hoodies", price: "$32", imageName: "hoodie01.png"),
        Product.init(title: "Devslopes Logo Hoodies", price: "$32", imageName: "hoodie02.png"),
        Product.init(title: "Devslopes Logo Hoodies", price: "$32", imageName: "hoodie03.png"),
        Product.init(title: "Devslopes Logo Hoodies", price: "$32", imageName: "hoodie04.png")
    ]
    private let shirts:[Product] = [
        Product.init(title: "Devslopes Logo Shirt", price: "$18", imageName: "shirt01.png"),
        Product.init(title: "Devslopes Logo Shirt", price: "$18", imageName: "shirt02.png"),
        Product.init(title: "Devslopes Logo Shirt", price: "$18", imageName: "shirt03.png"),
        Product.init(title: "Devslopes Logo Shirt", price: "$18", imageName: "shirt04.png"),
        Product.init(title: "Devslopes Logo Shirt", price: "$18", imageName: "shirt05.png")
    ]
    
    private let digitalGoods:[Product] = []
    func getCategories() -> [Category]{
        return categories
    }
    func getProduct(forCategoryTitle title:String) ->[Product]{
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HOODIES":
            return getHoodies()
        case "HATS":
            return getHats()
        case "DIGITALGOODS":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    func getHats()-> [Product]{
        return hats
    }
    func getHoodies()-> [Product]{
        return hoodies
    }
    func getShirts()-> [Product]{
        return shirts
    }
    func getDigitalGoods()-> [Product]{
        return digitalGoods
    }
}

