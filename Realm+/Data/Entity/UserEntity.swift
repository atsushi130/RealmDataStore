//
//  UserEntity.swift
//  Realm+
//
//  Created by Atsushi Miyake on 2017/06/25.
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import Foundation
import RealmSwift
import Realm

final class UserEntity: RealmEntity {
    
    dynamic var name: String = ""
    dynamic var age:  Int    = 0
    dynamic var companyId: String = ""
    
    init(user: User) {
        super.init(id: user.id)
        self.name      = user.name
        self.age       = user.age
        self.companyId = user.companyId
    }
    
    required init() {
        super.init()
    }
    
    required init(value: Any, schema: RLMSchema) {
        super.init(value: value, schema: schema)
    }
    
    required init(realm: RLMRealm, schema: RLMObjectSchema) {
        super.init(realm: realm, schema: schema)
    }
}
