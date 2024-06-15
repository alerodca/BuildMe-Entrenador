//
//  Trainer.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 15/5/24.
//

import Foundation

/// Una clase que representa a un entrenador.
///
/// La clase `Trainer` contiene información sobre un entrenador, incluyendo su nombre, nombre de usuario, correo electrónico, contraseña, identificador único (UID) y URL de la imagen de perfil.
class Trainer: Decodable {
    /// El nombre del entrenador.
    var name: String
    
    /// El nombre de usuario del entrenador.
    var username: String
    
    /// El correo electrónico del entrenador.
    var email: String
    
    /// La contraseña del entrenador.
    var password: String
    
    /// El identificador único (UID) del entrenador.
    var uid: String
    
    /// La URL de la imagen de perfil del entrenador.
    var profileImageURL: String
    
    /// Inicializa una nueva instancia de `Trainer`.
    ///
    /// - Parameters:
    ///   - name: El nombre del entrenador.
    ///   - username: El nombre de usuario del entrenador.
    ///   - email: El correo electrónico del entrenador.
    ///   - password: La contraseña del entrenador.
    ///   - uid: El identificador único (UID) del entrenador.
    ///   - profileImageURL: La URL de la imagen de perfil del entrenador.
    init(name: String, username: String, email: String, password: String, uid: String, profileImageURL: String) {
        self.name = name
        self.username = username
        self.email = email
        self.password = password
        self.uid = uid
        self.profileImageURL = profileImageURL
    }
    
    /// Convierte al entrenador a un diccionario.
    ///
    /// - Returns: Un diccionario que contiene toda la información del entrenador.
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
