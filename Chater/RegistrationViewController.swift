//
//  RegistrationViewController.swift
//  Chater
//
//  Created by Ryan Lim on 2021-11-16.
//

import UIKit
import Firebase

class RegistrationViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        if let email = emailTextField.text,
           let password = passwordTextField.text{
            Auth.auth().createUser(withEmail: email, password: password){
                (user, error) in
                if let err = error{
                    print("uh oh" + err.localizedDescription)
                } else {
                    print("Sucesss Created user" + email)
                    self.performSegue(withIdentifier: "showChat", sender: self)
                    
                }
            }
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

}
