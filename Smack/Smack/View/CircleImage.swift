//
//  CircleImage.swift
//  Smack
//
//  Created by Test on 6/5/19.
//  Copyright © 2019 miriam schnoll. All rights reserved.
//

import UIKit
@IBDesignable
class CircleImage: UIImageView {
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    func setupView(){
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
    }

}
