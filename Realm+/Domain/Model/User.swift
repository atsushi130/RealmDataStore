//
//  User.swift
//  Realm+
//
//  Created by 三宅　篤史 on 2017/06/25.
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import Foundation

final class User {
    let id:   String
    let name: String
    let age:  Int
    let companyId: String
    
    init(id: String, name: String, age: Int, companyId: String) {
        self.id        = id
        self.name      = name
        self.age       = age
        self.companyId = companyId
    }
}
