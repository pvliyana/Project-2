//
//  CartTableViewController.swift
//  SIT206Ass2_215421142
//
//  Created by parami on 19/5/17.
//  Copyright © 2017 Deakin. All rights reserved.
//

import UIKit
import CoreData

class CartTableViewController: UITableViewController {

    var itemsName = String()
    var itemsPrice = String()
    var itemsQty = String()
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (Utilities.items.count)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {let cell = tableView.dequeueReusableCell(withIdentifier: "cartCell", for: indexPath)
        
        //cell.textLabel?.text = "\(Utilities.items[indexPath.row].itemName), \(Utilities.items[indexPath.row].itemPrice)"
        cell.textLabel?.text = "\(itemsName) Qty :\(itemsQty)"
        cell.detailTextLabel?.text = "$ \(itemsPrice)"
        // cell.detailTextLabel?.text = "\(Utilities.items[indexPath.row].itemQty)"
        
        
        return(cell)
    }
    
    
    /*  override func viewDidAppear(_ animated: Bool) {
     myTableView.reloadData()
     }*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Utilities.loadItems()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            Utilities.items.remove(at: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

}


