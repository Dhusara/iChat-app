//
//  FirestoreService.swift
//  iChat
//
//  Created by Serhii Demianenko on 25.01.2021.
//  Copyright © 2021 Serhii Demianenko. All rights reserved.
//

import Firebase
import FirebaseFirestore

class FirestoreService {
    
    static let shared = FirestoreService()
    
    let db = Firestore.firestore()
    
    private var usersRef: CollectionReference {
        return db.collection("users")
    }
    
    func saveProfileWith(id: String, email: String, userName: String?, avatarImageString: String?, description: String?, sex: String?, completion: @escaping (Result<MUser, Error>) -> Void) {
        
        guard Validators.isFilled(userName: userName, description: description, sex: sex) else {
            completion(.failure(UserError.notFilled))
            return
        }
        
        var Muser = MUser(userName: userName!,
                          email: email,
                          description: description!,
                          sex: sex!,
                          avatarStringURL: "Not Exist",
                          id: id)
        
        self.usersRef.document(Muser.id).setData(<#T##documentData: [String : Any]##[String : Any]#>, completion: <#T##((Error?) -> Void)?##((Error?) -> Void)?##(Error?) -> Void#>)
        
    }
}
