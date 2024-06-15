//
//  ExerciseDay.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 15/5/24.
//

import Foundation

/// Una clase que representa un día de ejercicios.
///
/// La clase `ExerciseDay` contiene información sobre los ejercicios a realizar en un día específico, agrupados por grupos musculares.
class ExerciseDay: Decodable {
    /// El día de la semana.
    var day: Day
    
    /// Los grupos musculares a trabajar en este día.
    var muscleGroup: [MuscleGroup]
    
    /// Los ejercicios a realizar en este día.
    var exercises: [Exercise]
    
    /// Inicializa una nueva instancia de `ExerciseDay`.
    ///
    /// - Parameters:
    ///   - day: El día de la semana.
    ///   - muscleGroup: Los grupos musculares a trabajar en este día.
    ///   - exercises: Los ejercicios a realizar en este día.
    init(day: Day, muscleGroup: [MuscleGroup], exercises: [Exercise]) {
        self.day = day
        self.muscleGroup = muscleGroup
        self.exercises = exercises
    }
    
    /// Convierte el día de ejercicios a un diccionario.
    ///
    /// - Returns: Un diccionario que contiene toda la información del día de ejercicios.
    func toDictionary() -> [String: Any] {
        return [
            "day": day.rawValue,
            "muscleGroup": muscleGroup.map { $0.rawValue },
            "exercises": exercises.map { $0.toDictionary() }
        ]
    }
}
