//
//  GymTrainingDay.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 30/4/24.
//

import Foundation

struct GymTrainingDay: Decodable {
    var dayOfWeek: DayOfWeek // Día de la semana del entrenamiento
    var muscleGroupTarget: [MuscleGroup] // Grupos musculares a trabajar durante el día de entrenamiento
    var exercises: [GymExercise] // Lista de ejercicios del día de entrenamiento
    var comments: String? // Comentarios adicionales sobre el entrenamiento
    
    func toDictionary() -> [String: Any] {
        var dictionary: [String: Any] = [
            "dayOfWeek": dayOfWeek.rawValue,
            "comments": comments ?? ""
        ]
        
        // Convertir los arrays a arrays de strings
        let muscleGroupStrings = muscleGroupTarget.map { $0.rawValue }
        dictionary["muscleGroupTarget"] = muscleGroupStrings
        
        // Convertir los ejercicios a un array de diccionarios
        let exerciseDictionaries = exercises.map { $0.toDictionary() }
        dictionary["exercises"] = exerciseDictionaries
        
        return dictionary
    }
}
