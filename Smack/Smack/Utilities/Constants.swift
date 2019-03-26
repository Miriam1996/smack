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

//User Defaults

let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"


typealias CompletionHandler = (_ Sucess: Bool) -> ()

//URL Constants
let BASE_URL = "https://chattychatchat96.herokuapp.com/v1/"
let URL_REGISTER =  "\(BASE_URL)account/register"
