//
//  MessageService.swift
//  Smack
//
//  Created by Test on 6/16/19.
//  Copyright © 2019 miriam schnoll. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class MessageService{
    static let instance = MessageService()
    
    var channels = [Channel]()
    
    func findAllChannel(completion:@escaping CompletionHandler){
        Alamofire.request(URL_GET_CHANNELS,method: .get,parameters:nil, encoding: JSONEncoding.default,headers:BEARER_HEADER).responseJSON { (response) in
           
            if response.result.error==nil{
                guard let data = response.data else{return}
              do{
                if  let json = try JSON(data:data).array{
                
                    for item in json{
                        let name = item["name"].stringValue
                        let channelDescription = item["decription"].stringValue
                        let id = item["_id"].stringValue
                        let channel = Channel(channelTitle: name, channelDescription: channelDescription, id:id)
                        self.channels.append(channel)
                        
                    }
                   
                    completion(true)
                }
                }
              catch{
                print(error)
                }
                print(self.channels)
              
        }
            else{
                completion(false)
                debugPrint(response.result.error as Any)
            }
        }
    }
    
}
