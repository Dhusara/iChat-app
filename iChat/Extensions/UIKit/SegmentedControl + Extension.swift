//
//  SegmentedControl + Extension.swift
//  iChat
//
//  Created by Serhii Demianenko on 09.01.2021.
//  Copyright © 2021 Serhii Demianenko. All rights reserved.
//

import UIKit

extension UISegmentedControl {
    
    convenience init(first: String, second: String) {
        self.init()
        self.insertSegment(withTitle: first, at: 0, animated: true)
        self.insertSegment(withTitle: second, at: 1, animated: true)
        self.selectedSegmentIndex = 0
    }
    
}
