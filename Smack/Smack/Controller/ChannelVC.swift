//
//  ChannelVC.swift
//  Smack
//
//  Created by Test on 3/21/19.
//  Copyright © 2019 miriam schnoll. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    @IBOutlet weak var loginBtn: UIButton!
    @IBAction func prepareforUnWind(segue: UIStoryboardSegue){
        
    }
    @IBAction func loginBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        super.revealViewController()?.rearViewRevealWidth = self.view.frame.width - 60

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
