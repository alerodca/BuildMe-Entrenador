//
//  Athlete.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 13/5/24.
//

import Foundation

/// Una clase que representa a un atleta.
///
/// La clase `Athlete` contiene información sobre un atleta, incluyendo su nombre, género, fecha de nacimiento, correo electrónico, número de teléfono, nombre de usuario, contraseña, objetivos de entrenamiento, tiempo disponible, ubicación, historial clínico, historial de lesiones, condición física, imagen de perfil, estado de entrenador, identificador único (UID), rutina de entrenamiento y dieta.
class Athlete: Decodable {
    /// El nombre del atleta.
    var name: String
    
    /// El género del atleta.
    let gender: String
    
    /// La fecha de nacimiento del atleta.
    let dateBirth: String
    
    /// El correo electrónico del atleta.
    var email: String
    
    /// El número de teléfono del atleta.
    var phone: String
    
    /// El nombre de usuario del atleta.
    var username: String
    
    /// La contraseña del atleta.
    var password: String
    
    /// El objetivo de entrenamiento del atleta.
    let trainingGoal: String
    
    /// El tiempo disponible del atleta.
    let availableTime: String
    
    /// La ubicación del atleta.
    let location: String
    
    /// El historial clínico del atleta.
    let clinicHistory: String
    
    /// El historial de lesiones del atleta.
    let injuriesHistory: String
    
    /// La condición física del atleta.
    let physicCondition: String
    
    /// La URL o nombre de la imagen de perfil del atleta.
    let profileImageView: String
    
    /// Indica si el atleta es un entrenador o no.
    var isTrainer = false
    
    /// El identificador único (UID) del atleta.
    let uid: String
    
    /// La rutina de entrenamiento del atleta.
    var routine: Training?
    
    /// La dieta del atleta.
    var diet: Diet?
    
    /// Inicializa una nueva instancia de `Athlete`.
    ///
    /// - Parameters:
    ///   - name: El nombre del atleta.
    ///   - gender: El género del atleta.
    ///   - dateBirth: La fecha de nacimiento del atleta.
    ///   - email: El correo electrónico del atleta.
    ///   - phone: El número de teléfono del atleta.
    ///   - username: El nombre de usuario del atleta.
    ///   - password: La contraseña del atleta.
    ///   - trainingGoal: El objetivo de entrenamiento del atleta.
    ///   - availableTime: El tiempo disponible del atleta.
    ///   - location: La ubicación del atleta.
    ///   - clinicHistory: El historial clínico del atleta.
    ///   - injuriesHistory: El historial de lesiones del atleta.
    ///   - physicCondition: La condición física del atleta.
    ///   - profileImageView: La URL o nombre de la imagen de perfil del atleta.
    ///   - uid: El identificador único (UID) del atleta.
    ///   - routine: La rutina de entrenamiento del atleta.
    ///   - diet: La dieta del atleta.
    init(name: String, gender: String, dateBirth: String, email: String, phone: String, username: String, password: String, trainingGoal: String, availableTime: String, location: String, clinicHistory: String, injuriesHistory: String, physicCondition: String, profileImageView: String, uid: String, routine: Training?, diet: Diet?) {
        self.name = name
        self.gender = gender
        self.dateBirth = dateBirth
        self.email = email
        self.phone = phone
        self.username = username
        self.password = password
        self.trainingGoal = trainingGoal
        self.availableTime = availableTime
        self.location = location
        self.clinicHistory = clinicHistory
        self.injuriesHistory = injuriesHistory
        self.physicCondition = physicCondition
        self.profileImageView = profileImageView
        self.uid = uid
        self.routine = routine
        self.diet = diet
    }

    /// Convierte al atleta a un diccionario.
    ///
    /// - Returns: Un diccionario que contiene toda la información del atleta.
    func toDictionary() -> [String: Any] {
        return [
            "name": name,
            "gender": gender,
            "dateBirth": dateBirth,
            "email": email,
            "phone": phone,
            "username": username,
            "password": password,
            "trainingGoal": trainingGoal,
            "availableTime": availableTime,
            "location": location,
            "clinicHistory": clinicHistory,
            "injuriesHistory": injuriesHistory,
            "physicCondition": physicCondition,
            "profileImageView": profileImageView,
            "isTrainer": isTrainer,
            "uid": uid,
            "routine": routine?.toDictionary(),
            "diet": diet?.toDictionary()
        ]
    }
}
