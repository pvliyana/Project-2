//
//  CupCakeMenuViewController.swift
//  SIT206Ass2_215421142
//
//  Created by parami on 19/5/17.
//  Copyright © 2017 Deakin. All rights reserved.
//

import UIKit

class CupCakeMenuViewController: UIViewController {

    //var cartController : UIStoryboardSegue
    @IBOutlet weak var itemName: UITextField!
    
    @IBOutlet weak var qty: UITextField!
   
    @IBAction func AddToCart(_ sender: Any) {
        
        if qty.text != nil{
            performSegue(withIdentifier: "itemToCartSegue", sender: <#T##Any?#>)
        }
    }
    
    override func prepare( for: UIStoryboardSegue, sender: Any?){
        if (segue.identifier == "itemToCartSegue"){
            let cartViewController = segue.desination as! CartTableViewController
            cartViewController.name = itemName.text!
            cartViewController.quantity = qty.text!
        }
        
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
