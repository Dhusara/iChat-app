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
    case cannotGetUserInfo
    case cannotUnwrapToMUser
}

extension UserError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .notFilled:
            return NSLocalizedString("Fill up all fields", comment: "")
        case .photoNotExist:
            return NSLocalizedString("You didn't choose a photo.", comment: "")
        case .cannotGetUserInfo:
            return NSLocalizedString("Not possible get User's info from Firebase.", comment: "")
        case .cannotUnwrapToMUser:
            return NSLocalizedString("Not possible to get MUser from User. ", comment: "")
        }
    }
}
