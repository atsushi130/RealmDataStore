//
//  RealmDataStore.swift
//  Realm+
//
//  Created by Atsushi Miyake on 2017/06/25.
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import Foundation
import RealmSwift
import Realm

struct RealmDataStore {
    
    static let shared = RealmDataStore()
    typealias Handler = (() -> Void)?
    
    private init() {}
    
    func add<T: RealmEntity>(_ object: T, handler: Handler = nil) {
        self.update(object, handler: handler)
    }
    
    func update<T: RealmEntity>(_ object: T, handler: Handler = nil) {
        Realm.updateObject(object)
        handler?()
    }
    
    func delete<T: RealmEntity>(_ object: T, handler: Handler = nil) {
        Realm.deleteObject(object)
        handler?()
    }
    
    func getObjects<T: RealmEntity>(class: T.Type) -> Results<T> {
        return Realm.objects(`class`)
    }
}
