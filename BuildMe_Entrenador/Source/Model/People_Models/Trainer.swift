//
//  Trainer.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 15/5/24.
//

import Foundation

class Trainer: Decodable {
    var name: String
    var username: String
    var email: String
    var password: String
    var uid: String
    var profileImageURL: String
    
    init(name: String, username: String, email: String, password: String, uid: String, profileImageURL: String) {
        self.name = name
        self.username = username
        self.email = email
        self.password = password
        self.uid = uid
        self.profileImageURL = profileImageURL
    }
    
    func toDictionary() -> [String: String] {
        return [
            "name": name,
            "username": username,
            "email": email,
            "password": password,
            "uid": uid,
            "profileImageURL": profileImageURL
        ]
    }
}
