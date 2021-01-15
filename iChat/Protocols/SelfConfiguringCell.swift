//
//  SelfConfiguringCell.swift
//  iChat
//
//  Created by Serhii Demianenko on 15.01.2021.
//  Copyright © 2021 Serhii Demianenko. All rights reserved.
//

import Foundation

protocol SelfConfiguringCell {
    static var reuseId: String { get }
    func configure(with value: MChat)
}
