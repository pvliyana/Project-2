//
//  CakeMenuViewController.swift
//  SIT206Ass2_215421142
//
//  Created by parami on 21/5/17.
//  Copyright © 2017 Deakin. All rights reserved.
//

import UIKit

class CakeMenuViewController: UIViewController {
    @IBOutlet weak var nameOne: UITextField!
    @IBOutlet weak var priceOne: UITextField!
    @IBOutlet weak var qtyOne: UITextField!
    
    @IBOutlet weak var nameTwo: UITextField!
    
    @IBOutlet weak var priceTwo: UITextField!
    
    @IBOutlet weak var qtyTwo: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Utilities.loadItems()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
        
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        if(segue.identifier == "cartSegueOne"){
            
            let Cart = segue.destination as! CartTableViewController
            Cart.itemsName = nameOne.text!
            var total : Int = 0
            total = Int(priceOne.text!)! * Int(qtyOne.text!)!
            Cart.itemsPrice = String(total)
            Cart.itemsQty = qtyOne.text!
        }
        
        if(segue.identifier == "cartSegueTwo"){
            
            let CartTwo = segue.destination as! CartTableViewController
            CartTwo.itemsName = nameTwo.text!
            var total : Int = 0
            total = Int(priceTwo.text!)! * Int(qtyTwo.text!)!
            CartTwo.itemsPrice = String(total)
            CartTwo.itemsQty = qtyTwo.text!
        }
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
