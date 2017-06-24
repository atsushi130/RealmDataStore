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
    
    func add<T: RealmModel>(_ object: T, handler: Handler = nil) {
        
        defer {
            handler?()
        }
        
        guard let old = self.getObjects(class: T.self).filter("id=%@", object.id).first else {
            Realm.addObject(object)
            return
        }
        
        Realm.deleteObject(old)
        Realm.addObject(object)
    }
    
    private func getObjects<T: RealmModel>(class: T.Type) -> Results<T> {
        return Realm.objects(`class`)
    }
}
