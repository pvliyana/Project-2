//
//  CustomerDetailsViewController.swift
//  SIT206Ass2_215421142
//
//  Created by parami on 21/5/17.
//  Copyright © 2017 Deakin. All rights reserved.
//

import UIKit

class CustomerDetailsViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var suburb: UITextField!
    @IBOutlet weak var state: UITextField!
    @IBOutlet weak var postCode: UITextField!
    @IBOutlet weak var Email: UITextField!
    @IBOutlet weak var phone: UITextField!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if(segue.identifier == "paymentSegue"){
        let EndController =  segue.destination as! PaymentDetailsViewController
        EndController.cusName = name.text!
        EndController.cusAddress = address.text!
        EndController.cusPhone = phone.text!
        EndController.cusState = state.text!
        EndController.cusPostCode = postCode.text!
        EndController.cusSuburb = suburb.text!
        }
        
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
