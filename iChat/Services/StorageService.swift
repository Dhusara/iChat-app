//
//  StorageService.swift
//  iChat
//
//  Created by Serhii Demianenko on 28.01.2021.
//  Copyright © 2021 Serhii Demianenko. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseStorage

class StorageService {
    
    static let shared = StorageService()
    
    let storageRef = Storage.storage().reference()
    
    private var avatarsRef: StorageReference {
        return storageRef.child("avatars")
    }
    
    private var currentUserId: String {
        return Auth.auth().currentUser!.uid
    }
    
    func uploadImage(photo: UIImage, completion: @escaping (Result<URL, Error>) -> Void) {
        guard let scaledImage = photo.scaledToSafeUploadSize,
              let imageData = scaledImage.jpegData(compressionQuality: 0.4) else {return}
        
        let metadata = StorageMetadata()
        metadata.contentType = "image/jpeg"
        
        avatarsRef.child(currentUserId).putData(imageData, metadata: metadata) { (metadata, error) in
            guard let _ = metadata else {
                completion(.failure(error!))
                return
            }
            
            self.avatarsRef.child(self.currentUserId).downloadURL { (url, error) in
                guard let downloadURL = url else {
                    completion(.failure(error!))
                    return
                }
                
                completion(.success(downloadURL))
            }
        }
    }
    
}
