//
//  loginSegmentViewController.swift
//  LogIn
//
//  Created by Yashom on 10/09/24.
//

import UIKit
import FirebaseAuth

class loginSegmentViewController: UIViewController {

    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBAction func signIn(_ sender: Any) {
        let email1 = email.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password2 = password.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        Auth.auth().signIn(withEmail: email1, password: password2, completion: {r,e in
            if e != nil{
                self.lbl2.text = "wrong credencials"
            }
            else{
                let homeController = self.storyboard?.instantiateViewController(withIdentifier: "home")
                self.view.window?.rootViewController = homeController
                self.view.window?.makeKeyAndVisible()
            }
        })
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}
