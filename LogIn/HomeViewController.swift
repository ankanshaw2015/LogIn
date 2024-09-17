//
//  HomeViewController.swift
//  LogIn
//
//  Created by Yashom on 17/09/24.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func logOut(_ sender: Any) {
        let mainController = storyboard?.instantiateViewController(withIdentifier: "main")
        self.view.window?.rootViewController = mainController
        self.view.window?.makeKeyAndVisible()
    }
    
    

}
