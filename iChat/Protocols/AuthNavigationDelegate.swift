//
//  AuthNavigationDelegate.swift
//  iChat
//
//  Created by Serhii Demianenko on 25.01.2021.
//  Copyright © 2021 Serhii Demianenko. All rights reserved.
//

import Foundation

protocol AuthNavigationDelegate: class {
    func toLoginVC()
    func toSignUpVC()
}
