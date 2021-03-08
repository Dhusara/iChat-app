//
//  AuthError.swift
//  iChat
//
//  Created by Serhii Demianenko on 24.01.2021.
//  Copyright © 2021 Serhii Demianenko. All rights reserved.
//

import Foundation

enum AuthError {
    case notFilled
    case invalidEmail
    case passwordsNotMatched
    case unknownError
    case serverError
}

extension AuthError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .notFilled:
            return NSLocalizedString("Fill up all fields", comment: "")
        case .invalidEmail:
            return NSLocalizedString("Invalid Email Format", comment: "")
        case .passwordsNotMatched:
            return NSLocalizedString("Passwords are different", comment: "")
        case .unknownError:
            return NSLocalizedString("Unknown Error", comment: "")
        case .serverError:
            return NSLocalizedString("Server Error", comment: "")
        }
    }
}
