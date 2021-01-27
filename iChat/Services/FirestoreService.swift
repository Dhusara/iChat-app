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
    
    func getUserData(user: User, completion: @escaping (Result<MUser, Error>) -> Void) {
        let docRef = usersRef.document(user.uid)
        docRef.getDocument { (document, error) in
            if let document = document, document.exists {
                guard let muser = MUser(document: document) else {
                    completion(.failure(UserError.cannotUnwrapToMUser))
                    return
                }
                completion(.success(muser))
            } else {
                completion(.failure(UserError.cannotGetUserInfo))
            }
        }
    }
    
    func saveProfileWith(id: String, email: String, userName: String?, avatarImageString: String?, description: String?, sex: String?, completion: @escaping (Result<MUser, Error>) -> Void) {
        
        guard Validators.isFilled(userName: userName, description: description, sex: sex) else {
            completion(.failure(UserError.notFilled))
            return
        }
        
        let Muser = MUser(userName: userName!,
                          email: email,
                          avatarStringURL: "Not Exist",
                          description: description!,
                          sex: sex!,
                          id: id)
        
        self.usersRef.document(Muser.id).setData(Muser.representation) { (error) in
            if let error = error {
                completion(.failure(error))
            } else {
                completion(.success(Muser))
            }
        }
        
    }
}
