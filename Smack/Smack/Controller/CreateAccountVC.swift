//
//  AccountVC.swift
//  Smack
//
//  Created by Test on 3/23/19.
//  Copyright © 2019 miriam schnoll. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {
    
    //outlets
    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var userImage: UIImageView!
    
    
    @IBAction func pickAvatarPressed(_ sender: Any) {
    }
    @IBAction func createAccountPressed(_ sender: Any) {
        guard let email = emailText.text, emailText.text != ""else{
                return
        }
        guard let pass = passwordText.text, passwordText.text != ""else{
            return
        }
        AuthService.instance.registerUser(email: email, password: pass) { (success) in
            if success{
                print("registered user")
            }
        }
    }
    
    @IBAction func pickBGColorPressed(_ sender: Any) {
    }
    @IBAction func closedPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
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
