//
//  ViewController.swift
//  FacebookSDK
//
//  Created by Mohamed on 1/31/20.
//  Copyright © 2020 Mohamed74. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit

class ViewController: UIViewController {

    @IBOutlet weak var facebookButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func facebookLoginButton(_ sender: UIButton) {
        
        let manager = LoginManager()
        manager.logIn(permissions: [.publicProfile , .email , .userAboutMe], viewController: self) { (result) in
            
            switch result{
                
            case .success(granted: let permissionGranted, declined: let permessionDeclined, token: let userToken):
                print("the user token is \(userToken)")
                
                break
            case .cancelled:
                
                print("cancelled")
                break
                
            case .failed(_):
                print("faied")
                break
            }
        }
    }
}

