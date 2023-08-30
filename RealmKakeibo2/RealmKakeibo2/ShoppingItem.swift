//
//  ShoppingItem.swift
//  RealmKakeibo2
//
//  Created by 長島啓太朗 on 2023/08/23.
//

import Foundation
import RealmSwift
 
class ShoppingItem: Object{
    @Persisted var title: String = ""
    @Persisted var price: Int = 0
    @Persisted var isMarked:Bool = false
    @Persisted var category: Category?
}


