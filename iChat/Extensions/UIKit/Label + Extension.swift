//
//  Label + Extension.swift
//  iChat
//
//  Created by Serhii Demianenko on 03.09.2020.
//  Copyright © 2020 Serhii Demianenko. All rights reserved.
//

import UIKit

extension UILabel {
    
    convenience init(text: String, font: UIFont? = .avenir20()) {
        self.init()
        
        self.text = text
        self.font = font
    }
}

