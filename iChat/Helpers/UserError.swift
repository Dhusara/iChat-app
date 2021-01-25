//
//  UserError.swift
//  iChat
//
//  Created by Serhii Demianenko on 26.01.2021.
//  Copyright © 2021 Serhii Demianenko. All rights reserved.
//

import Foundation

enum UserError {
    case notFilled
    case photoNotExist 
}

extension UserError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .notFilled:
            return NSLocalizedString("Fill up all fields", comment: "")
        case .photoNotExist:
            return NSLocalizedString("You didn't choose a photo.", comment: "")
        }
    }
}
