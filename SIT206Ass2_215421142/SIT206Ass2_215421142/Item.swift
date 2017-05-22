//
//  Item.swift
//  SIT206Ass2_215421142
//
//  Created by parami on 20/5/17.
//  Copyright © 2017 Deakin. All rights reserved.
//

import Foundation
import UIKit
import CoreData

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
    static var items : [ItemInfo] = []
    //static var dateFormatter = DateFormatter()
  /*  static var items : [Item] = []
    static func loadItems(){
        items = [
            Item(price : "$17", name: "cake",
                 qty:"2"),
            
            
        ]
    }
}*/

//static var items: [ItemInfo] = []
class func loadItems(){
    let context = ( UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    do {
        let req : NSFetchRequest<ItemInfo> = ItemInfo.fetchRequest()
        items = try context.fetch(req)
    } catch let err { print(err) }
    
    
    if items.count == 0{
        var item = ItemInfo(context: context)
        item.itemPrice = "5"
        item.itemName = "Cup Cake"
        item.itemQty = "2"
        items.append(item)
        
        item = ItemInfo(context: context)
        item.itemPrice = "6"
        item.itemName = "chocolate Cake"
        item.itemQty = "2"
        items.append(item)
        
        
        try! context.save()
        
    }
    
}

}
