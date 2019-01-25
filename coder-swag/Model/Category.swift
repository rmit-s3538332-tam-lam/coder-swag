//
//  Category.swift
//  coder-swag
//
//  Created by Graphene on 25/1/19.
//  Copyright © 2019 Graphene. All rights reserved.
//

import Foundation
struct Category {
    private(set) public var title :String
    private(set) public var imageName: String
    init(title: String, imageName:String) {
        self.title = title
        self.imageName = imageName
    }
}
