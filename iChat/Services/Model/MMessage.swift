//
//  MMessage.swift
//  iChat
//
//  Created by Serhii Demianenko on 29.01.2021.
//  Copyright © 2021 Serhii Demianenko. All rights reserved.
//

import UIKit

struct MMessage: Hashable {
    let content: String
    let senderId: String
    let senderUserName: String
    var sentDate: Date
    let id: String?
    
    init(user: MUser, content: String) {
        self.content = content
        senderId = user.id
        senderUserName = user.userName
        sentDate = Date()
        id = nil
    }
    
    var representation: [String : Any] {
        var rep: [String : Any] = [
            "created" : sentDate,
            "senderId" : senderId,
            "senderName" : senderUserName,
            "content" : content
        ]
        return rep
    }
}
