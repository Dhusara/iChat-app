//
//  WaitingChatsNavigation.swift
//  iChat
//
//  Created by Serhii Demianenko on 30.01.2021.
//  Copyright © 2021 Serhii Demianenko. All rights reserved.
//

import Foundation

protocol WaitingChatsNavigation: class {
    func removeWaitingChat(chat: MChat)
    func changeToActive(chat: MChat)
}
