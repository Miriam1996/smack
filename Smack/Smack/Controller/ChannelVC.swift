//
//  ChannelVC.swift
//  Smack
//
//  Created by Test on 3/21/19.
//  Copyright © 2019 miriam schnoll. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        setUpUserInfo()
        
    }

    @IBOutlet weak var userImg: CircleImage!
    @IBOutlet weak var loginBtn: UIButton!
    @IBAction func prepareforUnWind(segue: UIStoryboardSegue){
        
    }
    @IBAction func loginBtnPressed(_ sender: Any) {
        if AuthService.instance.isLoggedIn{
            //show profile
            let profile  = ProfileVC()
            profile.modalPresentationStyle = .custom
            present(profile, animated: true, completion: nil)
        }
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        super.revealViewController()?.rearViewRevealWidth = self.view.frame.width - 60
        NotificationCenter.default.addObserver(self, selector: #selector(ChannelVC.userDataDidChange(_notif:)), name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
        // Do any additional setup after loading the view.
    }
    

    
    @objc func userDataDidChange(_notif: Notification){
       setUpUserInfo()
    }
    func setUpUserInfo(){
        if AuthService.instance.isLoggedIn{
            
            loginBtn.setTitle(UserDataService.instance.name, for: .normal)
            userImg.image = UIImage(named: UserDataService.instance.avatarName)
            userImg.backgroundColor = UserDataService.instance.returnUIColor(components: UserDataService.instance.avatarColor)
            
        }
        else{
            loginBtn.setTitle("Login", for: .normal)
            userImg.image = UIImage(named: "menuProfileIcon")
            userImg.backgroundColor = UIColor.clear
        }
    }
}
