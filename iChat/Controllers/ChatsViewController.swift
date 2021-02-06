//
//  ChatsViewController.swift
//  iChat
//
//  Created by Serhii Demianenko on 06.02.2021.
//  Copyright © 2021 Serhii Demianenko. All rights reserved.
//

import UIKit
import MessageKit

class ChatsViewController: MessagesViewController {
    
    private var messages: [MMessage] = []
    
    private let user: MUser
    private let chat: MChat
    
    init(user: MUser, chat: MChat) {
        self.user = user
        self.chat = chat
        super.init(nibName: nil, bundle: nil)
        
        title = chat.friendUserName
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - MessagesDataSource

extension ChatsViewController: MessagesDataSource {
    
    func currentSender() -> SenderType {
        return Sender(senderId: user.id, displayName: user.userName)
    }
    
    func messageForItem(at indexPath: IndexPath, in messagesCollectionView: MessagesCollectionView) -> MessageType {
        return messages[indexPath.item]
    }
    
    func numberOfSections(in messagesCollectionView: MessagesCollectionView) -> Int {
        return 1
    }
    
    
}
