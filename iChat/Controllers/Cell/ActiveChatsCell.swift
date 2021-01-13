//
//  ActiveChatsCell.swift
//  iChat
//
//  Created by Serhii Demianenko on 13.01.2021.
//  Copyright © 2021 Serhii Demianenko. All rights reserved.
//

import UIKit

protocol SelfConfiguringCell {
    static var reuseId: String {get}
    func configure(with value: MChat)
}

class ActiveChatsCell: UICollectionViewCell, SelfConfiguringCell {
    
    static var reuseId: String = "ActiveChatsCell"
    
    let friendImageView = UIImageView()
    let friendName = UILabel(text: "User name", font: <#T##UIFont?#>)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    func configure(with value: MChat) {
        <#code#>
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
