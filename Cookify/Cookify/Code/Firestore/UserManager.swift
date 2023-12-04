//
//  UserManager.swift
//  Cookify
//
//  Created by jake gilbert on 12/3/23.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift


final class UserManager {
    
    static let shared = UserManager()
    
    init() {}
    
    func createNewUser(auth: AuthDataResultModel) async throws {
        var userData: [String:Any] = [
            "user_id" : auth.uid,
            "photo_url": auth.photoUrl,
            "email": auth.email,
            "posts": [],
            "followers": [],
            "following": []
        ]
        
        try await Firestore.firestore().collection("users").document(auth.uid).setData(userData, merge: false)
    }
}
