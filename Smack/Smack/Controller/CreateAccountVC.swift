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
     var avatarName = "profileDefault"
    var avatarColor = "[0.5,0.5,0.5,1]"
    
    @IBAction func pickAvatarPressed(_ sender: Any) {
    }
    @IBAction func createAccountPressed(_ sender: Any) {
        guard let email = emailText.text, emailText.text != ""else{
                return
        }
        guard let pass = passwordText.text, passwordText.text != ""else{
            return
        }
        guard let name = userNameText.text, userNameText.text != "" else{
            return
        }
        AuthService.instance.registerUser(email: email, password: pass) { (success) in
            if success{
                AuthService.instance.loginUser(email: email, password: pass, completion: { (success) in
                    if success{
                        AuthService.instance.createUser(name: name, email: email, avatarName: self.avatarName, avatarColor: self.avatarColor, completion: { (success) in
                            
                            if success{
                                print(UserDataService.instance.name, UserDataService.instance.avatarName)
                                self.performSegue(withIdentifier: UNWIND, sender: nil)
                            }
                            
                        })
                    }
                })
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
