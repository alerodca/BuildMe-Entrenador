//
//  User.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 29/4/24.
//

import Foundation

struct User: Decodable {
    var name: String
    var username: String
    var email: String
    var password: String
    var uid: String
    var profileImageURL: String
    
    static func initializeFromSnapshot(_ snapshot: [String: Any]) -> User? {
            guard let name = snapshot["name"] as? String,
                  let username = snapshot["username"] as? String,
                  let email = snapshot["email"] as? String,
                  let password = snapshot["password"] as? String,
                  let uid = snapshot["uid"] as? String,
                  let profileImageURL = snapshot["profileImageURL"] as? String else {
                return nil
            }
            
            return User(name: name, username: username, email: email, password: password, uid: uid, profileImageURL: profileImageURL)
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
