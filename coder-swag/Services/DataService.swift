
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
        Category.init(title: "DIGITAL", imageName: "digital.png"),
        ]
    func getCategories() -> [Category]{
        return categories
    }
}

