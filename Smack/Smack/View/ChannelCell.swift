//
//  ChannelCell.swift
//  Smack
//
//  Created by Test on 6/16/19.
//  Copyright © 2019 miriam schnoll. All rights reserved.
//

import UIKit

class ChannelCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
  
    
    @IBOutlet weak var channelName: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if selected{
            self.layer.backgroundColor = UIColor(white: 1, alpha: 0.2).cgColor
        }
        else{
            self.layer.backgroundColor = UIColor.clear.cgColor
        }
        // Configure the view for the selected state
    }
    func configureCell(channel:Channel){
        let title = channel.channelTitle ?? ""
        channelName.text = "#\(title)"
    }
   

}
