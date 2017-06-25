//
//  CompanyEntity.swift
//  Realm+
//
//  Created by Atsushi Miyake on 2017/06/25.
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import Foundation
import RealmSwift
import Realm

final class CompanyEntity: RealmEntity {
    
    dynamic var name: String = ""
    
    init(company: Company) {
        super.init(id: company.id)
        self.name = company.name
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
