//
//  MChat.swift
//  iChat
//
//  Created by Serhii Demianenko on 17.01.2021.
//  Copyright © 2021 Serhii Demianenko. All rights reserved.
//

import UIKit

struct MChat: Hashable, Decodable {
    var userName: String
    var userImageString: String
    var lastMessage: String
    var id: Int
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (lhs: MChat, rhs: MChat) -> Bool {
        return lhs.id == rhs.id
    }
}
