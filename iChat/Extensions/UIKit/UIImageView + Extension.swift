//
//  UIImageView + Extension.swift
//  iChat
//
//  Created by Serhii Demianenko on 03.09.2020.
//  Copyright © 2020 Serhii Demianenko. All rights reserved.
//

import UIKit

extension UIImageView {
    
    convenience init(image: UIImage?, contentMode: UIView.ContentMode) {
        self.init()
        
        self.image = image
        self.contentMode = contentMode
    }
    
}
