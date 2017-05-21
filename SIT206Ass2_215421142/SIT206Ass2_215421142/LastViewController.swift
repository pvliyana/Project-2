//
//  LastViewController.swift
//  SIT206Ass2_215421142
//
//  Created by parami on 21/5/17.
//  Copyright © 2017 Deakin. All rights reserved.
//

import UIKit

class LastViewController: UIViewController {

    var cusName = String()
    var cusAddress = String()
    var cusSuburb = String()
    var cusState = String()
    var cusPostCode = String()
    var cusPhone = String()
    
   
   
    @IBOutlet weak var Name: UITextView!

    
    @IBOutlet weak var Address: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        Name.text = "Thank You \(cusName) your order has been placed "
        Address.text = " Address: \(cusAddress), \(cusSuburb), \(cusState) \(cusPostCode)"
        
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
