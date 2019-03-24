//
//  LoginVC.swift
//  Smack
//
//  Created by Test on 3/22/19.
//  Copyright © 2019 miriam schnoll. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBAction func closePressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func createAccntBtnPressed(_ sender: Any) {
      performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
        
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
