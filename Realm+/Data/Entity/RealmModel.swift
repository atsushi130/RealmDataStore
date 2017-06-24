//
//  RealmModel.swift
//  Realm+
//
//  Created by Atsushi Miyake on 2017/06/25.
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import Foundation
import RealmSwift
import Realm

class RealmModel: Object, RealmModelable {
    dynamic var id = ""
    
    init(id: String) {
        self.id = id
        super.init()
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
