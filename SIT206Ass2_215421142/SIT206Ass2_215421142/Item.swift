//
//  Item.swift
//  SIT206Ass2_215421142
//
//  Created by parami on 20/5/17.
//  Copyright © 2017 Deakin. All rights reserved.
//

import Foundation
import UIKit

class Item {
    var itemPrice : String
    var itemName : String
    var itemQty : String
    
    init(price : String, name : String, qty : String) {
        self.itemPrice = price
        self.itemName = name
        self.itemQty = qty
    }
}

class Utilities {
    //static var dateFormatter = DateFormatter()
    static var items : [Item] = []
    static func loadItems(){
        items = [
            Item(price : "$17", name: "cake",
                 qty:"2"),
            
            
        ]
    }
}
