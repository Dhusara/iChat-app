//
//  MMessage.swift
//  iChat
//
//  Created by Serhii Demianenko on 29.01.2021.
//  Copyright © 2021 Serhii Demianenko. All rights reserved.
//

import UIKit
import FirebaseFirestore

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
    
    init?(document: QueryDocumentSnapshot) {
        let data = document.data()
        guard let sentDate = data["created"] as? Timestamp else {return nil}
        guard let senderId = data["senderId"] as? String else {return nil}
        guard let senderName = data["senderName"] as? String else {return nil}
        guard let content = data["content"] as? String else {return nil}
        
        self.id = document.documentID
        self.sentDate = sentDate.dateValue()
        self.senderId = senderId
        self.senderUserName = senderName
        self.content = content
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
