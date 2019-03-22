//
//  ChatVC.swift
//  Smack
//
//  Created by Test on 3/21/19.
//  Copyright © 2019 miriam schnoll. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {

    @IBOutlet weak var MenuBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        MenuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())

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
