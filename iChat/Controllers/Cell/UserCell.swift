//
//  UserCell.swift
//  iChat
//
//  Created by Serhii Demianenko on 18.01.2021.
//  Copyright © 2021 Serhii Demianenko. All rights reserved.
//

import UIKit

class UserCell: UICollectionViewCell, SelfConfiguringCell {
    
    static var reuseId: String = "UserCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with value: MChat) {
        print("")
    }
}
