//
//  Item.swift
//  LinhKa_Collection_p1_v3
//
//  Created by macbook on 10/6/18.
//  Copyright © 2018 Viet. All rights reserved.
//

import Foundation

class Item {
    
    var name: String
    var content: String
    var images: [String]
    var code: String
    
    init(name: String, content: String, images: [String], code: String) {
        self.name = name
        self.content = content
        self.images = images
        self.code = code
    }
}