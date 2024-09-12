//
//  loginSegmentViewController.swift
//  LogIn
//
//  Created by Yashom on 10/09/24.
//

import UIKit

class loginSegmentViewController: UIViewController {

    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBAction func signIn(_ sender: Any) {
        
        if email.text == password.text{
            lbl2.text = "Log in succsessful"
        }
        else{
            lbl2.text = " Please Register first"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}
