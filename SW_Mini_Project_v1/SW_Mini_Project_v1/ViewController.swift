//
//  ViewController.swift
//  SW_Mini_Project_v1
//
//  Created by Hayato Nakamura on 2018/09/14.
//  Copyright © 2018 Hayatopia. All rights reserved.
//

import UIKit
import GoogleSignIn

class ViewController: UIViewController, GIDSignInUIDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        GIDSignIn.sharedInstance().uiDelegate = self
        GIDSignIn.sharedInstance().signInSilently()
                
        let signInButton = GIDSignInButton(frame: CGRect(origin: CGPoint(x: 0,y :0), size: CGSize(width: 100, height: 50)))
        signInButton.center = CGPoint(x: 190, y: 600)
        
        view.addSubview(signInButton)
        
        toggleAuth()
    }
    
    
    func signIn(signIn: GIDSignIn!, didSignInForUser user: GIDGoogleUser!,
                withError error: NSError!) {
        if (error == nil) {
            // Perform any operations on signed in user here.
            // ...
            print("Sign in successful")

        } else {
            print("\(error.localizedDescription)")
        }
    }
    
    func toggleAuth() {
        if (GIDSignIn.sharedInstance().hasAuthInKeychain()){
            // Signed in
            print("Signed in")
            
            //self.performSegue(withIdentifier: "secondViewController", sender: self)
            
            let SecondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! secondViewController
            self.navigationController?.pushViewController(SecondViewController, animated: true)
            
        } else {
            print("Signed out")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

