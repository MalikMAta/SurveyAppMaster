//
//  pickController.swift
//  Login
//
//  Created by admin on 5/11/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit
import UIKit
import FirebaseAuth
import Firebase

var ref: DatabaseReference!

class pickController: UIViewController {

    @IBOutlet weak var input: UITextField!
    
    @IBOutlet weak var inputTwo: UITextField!
    
    @IBOutlet weak var inputThree: UITextField!
    
    @IBOutlet weak var inputFour: UITextField!
    
    @IBOutlet weak var inputFive: UITextField!
    
    
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        
        
        ref = Database.database().reference()
        
        
        
    }
    
    @IBAction func createButton(_ sender: Any) {
        
        
        let data = input.text!
        let data1 = inputTwo.text!
        let data2 = inputThree.text!
        let data3 = inputFour.text!
        let data4 = inputFive.text!
        
        let arr = [data, data1, data2, data3, data4]
        
        ref.child("survey2").child("Questions").setValue(arr)
        
        
        //set edit text fields to ""
        
        
    }
}
   
