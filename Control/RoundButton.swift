//
//  RoundButton.swift
//  CodeLayout
//
//  Created by user140592 on 12/21/18.
//  Copyright © 2018 talspektor. All rights reserved.
//

import UIKit

public class RoundButton: UIButton {

    override public func setNeedsLayout() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.titleLabel?.textColor = .costomBlack
        self.setTitleColor(.costomBlack, for: .normal)
        self.contentEdgeInsets.left = 10
        self.contentEdgeInsets.right = 10
        self.layer.borderColor = UIColor.costomBlack.cgColor
        self.layer.borderWidth = 1
        self.clipsToBounds = true
        self.layer.masksToBounds = true
        self.layer.cornerRadius = self.frame.height / 2
    }

}
