//
//  RoundedButton.swift
//  Smack
//
//  Created by Test on 3/26/19.
//  Copyright © 2019 miriam schnoll. All rights reserved.
//

import UIKit
@IBDesignable
class RoundedButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 3.0{
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }
    override func awakeFromNib() {
        self.setupView()
    }
    func setupView(){
        self.layer.cornerRadius = cornerRadius
    }
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupView()
    }
}
