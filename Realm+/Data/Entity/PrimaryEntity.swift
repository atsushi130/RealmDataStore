//
//  PrimaryEntity.swift
//  Realm+
//
//  Created by Atsushi Miyake on 2017/06/25.
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import Foundation
import RealmSwift
import Realm

class PrimaryEntity: Object, Realmable {
    
    dynamic var id = ""
    
    override static func primaryKey() -> String? {
        return "id"
    }
}
