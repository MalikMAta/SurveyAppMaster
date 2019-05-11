//
//  ShowDataViewController.swift
//  Login
//
//  Created by admin on 4/30/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit
import Firebase

class ShowDataViewController: UIViewController {


    
    @IBOutlet var dataArray: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()


        
        
        
        
        
        
        
        
        
     
        
        _ = Database.database().reference().root.child("survey2").observe(DataEventType.value, with: { (snapshot) in
            print(">>",snapshot)
            
            let dic = snapshot.value as! [String:[String:Any]]
            Array(dic.values).forEach {
                let str = $0["fcmToken"] as! String
              print(str)
                
            }
        })
//
//        ref.observeSingleEvent(of: .value, with: { snapshot in
//            let m = snapshot.value as? String
//            self.Data.text = m
//        })
    
        
        
        
        
        
        
        
        
        
        
        
        
//
//        let ref = Database.database().reference().child("survey2").queryOrderedByKey().observe(.childChanged, with: {
//             snapshot in
//
//            var questions = [String]()
//
//            if let objects = snapshot.value as? NSArray {
//                for i in 0 ..< objects.count{
//                    questions.append(objects[i] as! String)
//                }
//                print(questions)
//                                }
//            for i in 0 ..< questions.count{
//
//                self.dataArray[i].text = questions[i]
//            }
//        })
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
       
        
       // ref.observeSingleEvent(of: .value, with: { snapshot in
            
        
//            if let objects = snapshot.children.allObjects as? [String] {
//                print(objects)
//                for index in 0 ..< objects.count{
//                 self.dataArray[index].text = objects[index]
//                }
//            }
//        })
        
        
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
