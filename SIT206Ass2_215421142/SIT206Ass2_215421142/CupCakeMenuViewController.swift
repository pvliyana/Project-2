//
//  CupCakeMenuViewController.swift
//  SIT206Ass2_215421142
//
//  Created by parami on 19/5/17.
//  Copyright © 2017 Deakin. All rights reserved.
//

import UIKit

class CupCakeMenuViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var price: UITextField!
    @IBOutlet weak var qty: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Utilities.loadItems()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func addItems(_ sender: Any) {
        if (qty.text != "")
        {
            performSegue(withIdentifier: "cartSegue", sender: self)
            //  items.append(qty.text!)
            //  items.append(price.text!)
            // items.append(name.text!)
            // input.text = ""
        }
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let Cart = segue.destination as! CartTableViewController
        Cart.itemsName = name.text!
        Cart.itemsPrice = price.text!
        Cart.itemsQty = qty.text!
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

