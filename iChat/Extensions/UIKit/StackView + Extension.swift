//
//  StackView + Extension.swift
//  iChat
//
//  Created by Serhii Demianenko on 16.09.2020.
//  Copyright © 2020 Serhii Demianenko. All rights reserved.
//

import UIKit

extension UIStackView {
    
    convenience init(arrangedSubviews: [UIView], axis: NSLayoutConstraint.Axis, spacing: CGFloat) {
        self.init(arrangedSubviews: arrangedSubviews)
        self.axis = axis
        self.spacing = spacing
    }
    
}
