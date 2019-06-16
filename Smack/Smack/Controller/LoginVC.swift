//
//  LoginVC.swift
//  Smack
//
//  Created by Test on 3/22/19.
//  Copyright © 2019 miriam schnoll. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var userNameTxt: UITextField!
    @IBOutlet weak var Spinner: UIActivityIndicatorView!
    @IBAction func closePressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func createAccntBtnPressed(_ sender: Any) {
      performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
        
    }
    @IBAction func loginPressed(_ sender: Any) {
        Spinner.isHidden = false
        Spinner.startAnimating()
        guard let email = userNameTxt.text, userNameTxt.text != "" else{return}
        guard let pass = passwordTxt.text, passwordTxt.text != "" else {return}
        AuthService.instance.loginUser(email: email, password: pass){
            (sucess) in
            if sucess {
                AuthService.instance.findUserByEmail(completion: { (sucess) in
                    if sucess {
                        NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
                        self.Spinner.isHidden = true
                        self.Spinner.stopAnimating()
                        self.dismiss(animated: true, completion: nil)
                    }
            })
            }
        }
        
    }
    func setupView(){
        userNameTxt.attributedPlaceholder = NSAttributedString(string: "username", attributes: [NSAttributedString.Key.foregroundColor: SmackPurplePlaceHolder])
        
        passwordTxt.attributedPlaceholder = NSAttributedString(string: "password", attributes: [NSAttributedString.Key.foregroundColor: SmackPurplePlaceHolder])
        
        Spinner.isHidden = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(LoginVC.handleTap))
        view.addGestureRecognizer(tap)
    }
    @objc func handleTap(){
        view.endEditing(true)
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
