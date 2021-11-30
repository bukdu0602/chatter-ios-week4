//
//  LoginViewController.swift
//  Chater
//
//  Created by Ryan Lim on 2021-11-16.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBAction func loginButtonTapped(_ sender: Any) {
        if let em = emailTextField.text,
           let pa = passwordTextField.text{
            Auth.auth().signIn(withEmail: em, password: pa){
                (user, error) in
                if let err = error{
                    print(err)
                } else {
                print("logged in as " + em)
                self.performSegue(withIdentifier: "loginSegue", sender: self)
            }
        }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
