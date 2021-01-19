//
//  MUser.swift
//  iChat
//
//  Created by Serhii Demianenko on 17.01.2021.
//  Copyright © 2021 Serhii Demianenko. All rights reserved.
//

import UIKit

struct MUser: Hashable, Decodable {
    var userName: String
    var avatarStringURL: String
    var id: Int
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (lhs: MUser, rhs: MUser) -> Bool {
        return lhs.id == rhs.id
    }
    
    func contains(filter: String?) -> Bool {
        guard let filter = filter else {return true}
        if filter.isEmpty {return true}
        let lowerCasedFilter = filter.lowercased()
        
        return userName.lowercased().contains(lowerCasedFilter)
    }
    
}
