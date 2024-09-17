//
//  ViewController.swift
//  LogIn
//
//  Created by Yashom on 10/09/24.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var segmentOutlet: UISegmentedControl!
    
    @IBOutlet weak var logInCon: UIView!
    
    @IBOutlet weak var registerCon: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.bringSubviewToFront(logInCon)
    }
    
    


    @IBAction func segmenting(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            self.view.bringSubviewToFront(logInCon)
        case 1:
            self.view.bringSubviewToFront(registerCon)
            
        default:
            break
        }
    }
    
}

