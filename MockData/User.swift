//
//  User.swift
//  MockData
//
//  Created by Adithya hayagreeva on 5/1/20.
//  Copyright © 2020 Emirates NBD. All rights reserved.
//

import Foundation
import ObjectMapper

struct User: Mappable {
    var name, age: String?

    init?(map: Map) {
        self.mapping(map: map)
    }
    
    mutating func mapping(map: Map) {
        name <- map["name"]
        age  <- map["age"]
    }
}
