//
//  ViewController.swift
//  Login
//
//  Created by admin on 4/10/19.
//  Copyright © 2019 admin. All rights reserved.
//
import Firebase
import GoogleSignIn
import FirebaseUI
import FirebaseAuth


class ViewController: UIViewController, GIDSignInUIDelegate {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    
        GIDSignIn.sharedInstance().uiDelegate = self

        //getting the signin button and adding it to view
        let googleSignInButton = GIDSignInButton()
        
        googleSignInButton.center = view.center
        view.addSubview(googleSignInButton)
        
        
      
        
    }
    @IBAction func Signout(_ sender: UIButton) {
        do {
            try  Auth.auth().signOut()
        } catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
    }
    
  
    
    @IBAction func create(_ sender: Any) {
        
    Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) {  user, error in
                if let firebaseError = error {
                    print(firebaseError.localizedDescription)
                    return
                }
        print(" success! ")
            }
        }
        
        
    
    
    @IBAction func login(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) {  user, error in
            if let firebaseError = error {
                print(firebaseError.localizedDescription)
                return
            }
            print(" success! ")
        }
        self.presentLoggedInScreen()    }
    
    func presentLoggedInScreen() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil);
        let LoggedInvc:LoggedInvc = storyboard.instantiateViewController(withIdentifier: "LoggedInvc") as! LoggedInvc
        self.present(LoggedInvc, animated:true, completion:nil)
    }
    
    
    
    
   
}


