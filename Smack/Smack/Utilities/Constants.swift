//
//  Constants.swift
//  Smack
//
//  Created by Test on 3/22/19.
//  Copyright © 2019 miriam schnoll. All rights reserved.
//

import Foundation
//segues
let TO_LOGIN = "toLogin"
let  TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"
let TO_AVATAR_PICKER = "toAvatarPicker"

//colors
let SmackPurplePlaceHolder = #colorLiteral(red: 0.2588235294, green: 0.3294117647, blue: 0.7254901961, alpha: 0.5)

//notification constants
let NOTIF_USER_DATA_DID_CHANGE =  Notification.Name("notifUserDataChanged")

//User Defaults

let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"


typealias CompletionHandler = (_ Sucess: Bool) -> ()

//URL Constants
let BASE_URL = "https://chattychatchat96.herokuapp.com/v1/"
let URL_REGISTER =  "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"
let URL_USER_ADD = "\(BASE_URL)user/add"
let URL_USER_BY_EMAIL = "\(BASE_URL)/user/byEmail/"
let URL_GET_CHANNELS = "\(BASE_URL)channel/"

//headers

let HEADER = [ "Content-Type" : "application/json; charset=utf-8"]
let BEARER_HEADER =  ["Authorization": "Bearer \(AuthService.instance.authToken)","Content-Type" : "application/json; charset=utf-8"]
