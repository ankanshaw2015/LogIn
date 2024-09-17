//
//  registerSegment.swift
//  LogIn
//
//  Created by Yashom on 10/09/24.
//

import UIKit
import Firebase
import FirebaseAuth

class registerSegment: UIViewController {
    
    @IBOutlet var lbl: UILabel!
    
    @IBOutlet weak var emailId: UITextField!
    
    @IBOutlet weak var password1: UITextField!
    
    @IBOutlet weak var password2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailId.attributedPlaceholder = NSAttributedString(
            string: "email",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
        )
        
        password1.attributedPlaceholder = NSAttributedString(
            string: "password",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
        )
        password2.attributedPlaceholder = NSAttributedString(
            string: "confirm password",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
        )

        // Do any additional setup after loading the view.
    }
    
     func validate() -> String?{
         if emailId.text == "" || password1.text == "" || password2.text == ""{
             return "please fill the fields"
         }
         else if password1.text != password2.text{
             return "confirm password did not matched "
         }
        return nil
    }
    
    
    @IBAction func signUp(_ sender: Any) {
        let str = validate()
        if str != nil{
            lbl.text = str
        }
        else{
            Auth.auth().createUser(withEmail: emailId.text!, password: password2.text!)
            self.home()
            
        }
        
        
    }
    
    func home(){
        let homeController = storyboard?.instantiateViewController(withIdentifier: "home") as? HomeViewController
        view.window?.rootViewController = homeController
        view.window?.makeKeyAndVisible()
    }
    
}
