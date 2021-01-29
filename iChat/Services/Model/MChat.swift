//
//  MChat.swift
//  iChat
//
//  Created by Serhii Demianenko on 17.01.2021.
//  Copyright © 2021 Serhii Demianenko. All rights reserved.
//

import UIKit

struct MChat: Hashable, Decodable {
    var friendUserName: String
    var friendAvatarStringURL: String
    var lastMessageContent: String
    var friendId: Int
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(friendId)
    }
    
    static func == (lhs: MChat, rhs: MChat) -> Bool {
        return lhs.friendId == rhs.friendId
    }
}
