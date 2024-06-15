//
//  Exercise.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 15/5/24.
//

import Foundation

/// Una clase que representa un ejercicio.
///
/// La clase `Exercise` contiene información sobre un ejercicio específico, incluyendo su nombre, imagen, descripción, repeticiones, series y el grupo muscular al que pertenece.
class Exercise: Decodable {
    /// El nombre del ejercicio.
    var name: String
    
    /// La URL o nombre de la imagen asociada con el ejercicio.
    var image: String
    
    /// La descripción del ejercicio.
    var description: String
    
    /// El número de repeticiones del ejercicio.
    var reps: Int
    
    /// El número de series del ejercicio.
    var sets: Int
    
    /// El grupo muscular al que pertenece el ejercicio.
    var muscleGroup: MuscleGroup
    
    /// Inicializa una nueva instancia de `Exercise`.
    ///
    /// - Parameters:
    ///   - name: El nombre del ejercicio.
    ///   - image: La URL o nombre de la imagen asociada con el ejercicio.
    ///   - description: La descripción del ejercicio.
    ///   - reps: El número de repeticiones del ejercicio.
    ///   - sets: El número de series del ejercicio.
    ///   - muscleGroup: El grupo muscular al que pertenece el ejercicio.
    init(name: String, image: String, description: String, reps: Int, sets: Int, muscleGroup: MuscleGroup) {
        self.name = name
        self.image = image
        self.description = description
        self.reps = reps
        self.sets = sets
        self.muscleGroup = muscleGroup
    }
    
    /// Convierte el ejercicio a un diccionario.
    ///
    /// - Returns: Un diccionario que contiene toda la información del ejercicio.
    func toDictionary() -> [String: Any] {
        return [
            "name": name,
            "image": image,
            "description": description,
            "reps": reps,
            "sets": sets,
            "muscleGroup": muscleGroup.rawValue
        ]
    }
}
