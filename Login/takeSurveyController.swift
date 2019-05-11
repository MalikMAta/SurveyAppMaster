//
//  takeSurveyController.swift
//  Login
//
//  Created by admin on 5/11/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit
import Firebase


class takeSurveyController: UIViewController {

    var ref: DatabaseReference!

    @IBOutlet weak var questions: UILabel!
    
    override func viewDidLoad() {
            super.viewDidLoad()
            
         /*
        ref = Database.database().reference()
      
        ref?.child("survey2").observe(.childAdded, with: { (<#DataSnapshot#>) in
            <#code#>
            self.postData.append()
        })
        
            _ = Database.database().reference().root.child("survey2").observe(DataEventType.value, with: { (snapshot) in
                print(">>",snapshot)
                
                let dic = snapshot.value as! [String:[String:Any]]
                Array(dic.values).forEach {
                    let str = $0["fcmToken"] as! String
                    print(str)
                    
                }
            })
            
            */
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


